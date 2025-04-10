
#include "ctl.h"


#define MAKE_VECTOR(type)									\
struct CTL_##type##VECTOR {									\
	size_t	BlockSize;										\
	type*	value;											\
	size_t	size;											\
	size_t	alloc;											\
};															\
															\
typedef struct CTL_##type##VECTOR ctl_##type##Vector;		\
															\
ctl_##type##Vector* ctl_##type##VectorInitSize(int BlockSize)\
{															\
    ctl_##type##Vector* s=malloc(sizeof(ctl_##type##Vector));\
	if(!s)													\
	{														\
		return NULL;										\
	}														\
	s->BlockSize	= BlockSize;							\
	s->value		= malloc(s->BlockSize*sizeof(type));    \
	if(!s->value)											\
	{														\
		ctl_errno	= CTL_OUT_OF_MEMORY;					\
		s->size		= 0;									\
		s->alloc	= 0;									\
		return NULL;										\
	}														\
	s->alloc		= s->BlockSize;							\
	s->size			= 0;									\
	return s;												\
}															\
															\
ctl_##type##Vector* ctl_##type##VectorInit(void)			\
{															\
	return ctl_##type##VectorInitSize(CTL_SIZE);			\
}															\
															\
ctl_##type##Vector* ctl_##type##VectorInitCopy(ctl_##type##Vector* vector)\
{															\
	ctl_##type##Vector* s=malloc(sizeof(ctl_##type##Vector));\
	if(!s)													\
	{														\
		return NULL;										\
	}														\
	s->BlockSize	= vector->BlockSize;					\
	s->value		= malloc(vector->alloc*sizeof(type));\
	if(!s->value)											\
	{														\
		ctl_errno	= CTL_OUT_OF_MEMORY;					\
		s->size		= 0;									\
		s->alloc	= 0;									\
		return NULL;										\
	}														\
	memmove(s->value,vector->value,vector->size*sizeof(type));\
	s->alloc		= vector->alloc;						\
	s->size			= vector->size;							\
	return s;												\
}															\
															\
void ctl_##type##VectorFree(ctl_##type##Vector* s)			\
{															\
	free(s->value);											\
	free(s);												\
}															\
															\
int ctl_##type##VectorPush_Back(ctl_##type##Vector* s, type push)\
{															\
	if(s->alloc <= s->size)									\
	{														\
		type* secure;										\
		s->alloc+=s->BlockSize;								\
		secure=malloc(s->alloc*sizeof(type));				\
		if(!secure)											\
		{													\
			ctl_errno	= CTL_OUT_OF_MEMORY;				\
			s->alloc-=s->BlockSize;							\
			return 1;										\
		}													\
		memcpy(secure, s->value, s->size*sizeof(type));	  	\
		CTL_GROW_ALLOC_SIZE(s);								\
		s->value=secure;									\
	}														\
	s->value[s->size]=push;									\
	++s->size;												\
	return 0;												\
}															\
															\
int ctl_##type##VectorPop_Back(ctl_##type##Vector* s, type* value)\
{															\
	CTL_RANGE(s->size == 0)									\
	{														\
		ctl_errno = CTL_OUT_OF_RANGE;						\
		return 0;											\
	}														\
	--s->size;												\
	if(!value)												\
		return 0;											\
	*value = s->value[s->size];								\
	return 0;												\
}															\
															\
int ctl_##type##VectorSet(ctl_##type##Vector* s, type* vector, size_t size)\
{															\
	if(s->value==vector && s->size==size)					\
		return 0;											\
	if(s->alloc<size)										\
	{														\
		size_t alloc=(size/s->BlockSize+1)*s->BlockSize;	\
		type* secure;										\
		secure=malloc(alloc*sizeof(type));					\
		if(!secure)											\
		{													\
			ctl_errno	= CTL_OUT_OF_MEMORY;				\
			return 1;										\
		}													\
		memcpy(secure, s->value, s->size*sizeof(type));	  	\
		s->value=secure;									\
		s->alloc=alloc;										\
	}														\
	s->size=size;											\
	memmove(s->value,vector,size*sizeof(type));				\
	return 1;												\
}															\
															\
int ctl_##type##VectorSetVector(ctl_##type##Vector* s, ctl_##type##Vector* vector)\
{															\
	if(s==vector)											\
		return 0;											\
	if(s->alloc<vector->size)								\
	{														\
		size_t alloc=(vector->size/s->BlockSize+1)*s->BlockSize;\
		type* secure;										\
		secure=malloc(alloc*sizeof(type));					\
		if(!secure)											\
		{													\
			ctl_errno	= CTL_OUT_OF_MEMORY;				\
			return 1;										\
		}													\
		memcpy(secure, s->value, s->size*sizeof(type));	  	\
		s->alloc=alloc;										\
		s->value=secure;									\
	}														\
	memmove(s->value,vector->value,vector->size*sizeof(type));\
	s->size=vector->size;									\
	return 0;												\
}															\
															\
int ctl_##type##VectorSetAt(ctl_##type##Vector* s, size_t pos, type value)\
{															\
	CTL_RANGE(pos>=s->size)									\
	{														\
		ctl_errno=CTL_OUT_OF_RANGE;							\
		return 1;											\
	}														\
	s->value[pos]=value;									\
	return 0;												\
}															\
															\
int ctl_##type##VectorInsert(ctl_##type##Vector* s, size_t pos, type value)\
{															\
	CTL_RANGE(pos>=s->size)									\
	{														\
		ctl_errno=CTL_WRONG_VALUE;							\
		return ctl_errno;									\
	}														\
	if(s->size>=s->alloc)									\
	{														\
		type* secure;										\
		s->alloc+=s->BlockSize;								\
		secure=malloc(s->alloc*sizeof(type));				\
		if(!secure)											\
		{													\
			s->alloc-=s->BlockSize;							\
			ctl_errno=CTL_OUT_OF_MEMORY;					\
			return 1;										\
		}													\
		memcpy(secure, s->value, s->size*sizeof(type));	  	\
		s->alloc+=s->BlockSize;								\
		CTL_GROW_ALLOC_SIZE(s);								\
		s->value=secure;									\
	}														\
	memmove(&s->value[pos+1],&s->value[pos],(s->size-pos)*sizeof(type));\
	++s->size;												\
	s->value[pos]=value;									\
	return 0;												\
}															\
															\
int ctl_##type##VectorDelete(ctl_##type##Vector* s, size_t begin, size_t end)\
{															\
	CTL_RANGE(begin>end)									\
	{														\
		ctl_errno=CTL_WRONG_VALUE;							\
		return 1;											\
	}														\
	s->size-=(end-begin);									\
	memmove(&s->value[begin],&s->value[end],s->size*sizeof(type));\
	return 0;												\
}															\
															\
int ctl_##type##VectorShrink(ctl_##type##Vector* s)			\
{															\
	type* secure;											\
	secure=malloc(s->size*sizeof(type));					\
	if(!secure)												\
	{														\
		ctl_errno=CTL_OUT_OF_MEMORY;						\
		return 1;											\
	}														\
	memcpy(secure, s->value, s->size*sizeof(type));	  		\
	s->value=secure;										\
	return 0;												\
}
