(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func))
  (func (;0;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 1
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.load offset=12
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 2
            i32.load offset=4
            local.get 2
            i32.load
            i32.or
            i32.store offset=4
          end
          local.get 2
          local.get 2
          i32.load
          i32.const 1
          i32.shl
          i32.store
        end
        local.get 2
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.shr_u
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=12
        i32.const 1
        i32.shr_u
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load offset=4)
  (func (;1;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=16
    loop  ;; label = @1
      local.get 2
      local.get 2
      i32.load offset=24
      i32.const 1
      i32.and
      i32.store offset=12
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 2
      i32.load offset=28
      local.get 2
      i32.load offset=12
      i32.and
      local.get 2
      i32.load offset=16
      i32.shl
      i32.or
      i32.store offset=20
      local.get 2
      local.get 2
      i32.load offset=16
      local.get 2
      i32.load offset=12
      i32.add
      i32.store offset=16
      local.get 2
      local.get 2
      i32.load offset=28
      i32.const 1
      i32.shr_u
      i32.store offset=28
      local.get 2
      local.get 2
      i32.load offset=24
      i32.const 1
      i32.shr_u
      i32.store offset=24
      local.get 2
      i32.load offset=24
      br_if 0 (;@1;)
    end
    local.get 2
    i32.load offset=20)
  (func (;2;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=44
    local.get 2
    local.get 1
    i32.store offset=40
    local.get 2
    local.get 2
    i32.load offset=40
    i32.const -1
    i32.xor
    i32.store offset=8
    local.get 2
    local.get 2
    i32.load offset=40
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load
        i32.const 5
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load offset=8
        i32.store offset=12
        local.get 2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.shl
        i32.xor
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.xor
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=8
        i32.const 4
        i32.shl
        i32.xor
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=8
        i32.const 8
        i32.shl
        i32.xor
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=8
        i32.const 16
        i32.shl
        i32.xor
        i32.store offset=8
        local.get 2
        i32.const 16
        i32.add
        local.get 2
        i32.load
        i32.const 2
        i32.shl
        i32.add
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.shl
        local.get 2
        i32.load offset=4
        i32.and
        i32.store
        local.get 2
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.const -1
        i32.xor
        i32.and
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=4
        local.get 2
        i32.const 16
        i32.add
        local.get 2
        i32.load
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.and
        i32.store offset=12
        local.get 2
        local.get 2
        i32.load offset=4
        local.get 2
        i32.load offset=12
        i32.xor
        local.get 2
        i32.load offset=12
        i32.const 1
        local.get 2
        i32.load
        i32.shl
        i32.shr_u
        i32.xor
        i32.store offset=4
        local.get 2
        local.get 2
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=40
    i32.and
    i32.store offset=44
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=16
    i32.and
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=12
    i32.xor
    local.get 2
    i32.load offset=12
    i32.const 1
    i32.shr_u
    i32.xor
    i32.store offset=44
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=20
    i32.and
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=12
    i32.xor
    local.get 2
    i32.load offset=12
    i32.const 2
    i32.shr_u
    i32.xor
    i32.store offset=44
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=24
    i32.and
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=12
    i32.xor
    local.get 2
    i32.load offset=12
    i32.const 4
    i32.shr_u
    i32.xor
    i32.store offset=44
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=28
    i32.and
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=12
    i32.xor
    local.get 2
    i32.load offset=12
    i32.const 8
    i32.shr_u
    i32.xor
    i32.store offset=44
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=32
    i32.and
    i32.store offset=12
    local.get 2
    local.get 2
    i32.load offset=44
    local.get 2
    i32.load offset=12
    i32.xor
    local.get 2
    i32.load offset=12
    i32.const 16
    i32.shr_u
    i32.xor
    i32.store offset=44
    local.get 2
    i32.load offset=44)
  (func (;3;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 2
    i32.load offset=28
    local.get 2
    i32.load offset=24
    i32.and
    i32.store offset=28
    local.get 2
    local.get 2
    i32.load offset=24
    i32.const -1
    i32.xor
    i32.const 1
    i32.shl
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=4
        i32.const 5
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load offset=20
        local.get 2
        i32.load offset=20
        i32.const 1
        i32.shl
        i32.xor
        i32.store offset=16
        local.get 2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=16
        i32.const 2
        i32.shl
        i32.xor
        i32.store offset=16
        local.get 2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=16
        i32.const 4
        i32.shl
        i32.xor
        i32.store offset=16
        local.get 2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=16
        i32.const 8
        i32.shl
        i32.xor
        i32.store offset=16
        local.get 2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=16
        i32.const 16
        i32.shl
        i32.xor
        i32.store offset=16
        local.get 2
        local.get 2
        i32.load offset=16
        local.get 2
        i32.load offset=24
        i32.and
        i32.store offset=12
        local.get 2
        local.get 2
        i32.load offset=24
        local.get 2
        i32.load offset=12
        i32.xor
        local.get 2
        i32.load offset=12
        i32.const 1
        local.get 2
        i32.load offset=4
        i32.shl
        i32.shr_u
        i32.or
        i32.store offset=24
        local.get 2
        local.get 2
        i32.load offset=28
        local.get 2
        i32.load offset=12
        i32.and
        i32.store offset=8
        local.get 2
        local.get 2
        i32.load offset=28
        local.get 2
        i32.load offset=8
        i32.xor
        local.get 2
        i32.load offset=8
        i32.const 1
        local.get 2
        i32.load offset=4
        i32.shl
        i32.shr_u
        i32.or
        i32.store offset=28
        local.get 2
        local.get 2
        i32.load offset=20
        local.get 2
        i32.load offset=16
        i32.const -1
        i32.xor
        i32.and
        i32.store offset=20
        local.get 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.add
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load offset=28)
  (func (;4;) (type 1))
  (func (;5;) (type 1)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.store offset=12
    end)
  (func (;6;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    call 4
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    i32.const 54
    i32.store offset=12
    local.get 2
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=12
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call 0
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 1024
          local.get 2
          i32.load offset=8
          i32.const 2
          i32.add
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.store offset=16
        end
        local.get 2
        local.get 2
        i32.load offset=8
        i32.const 3
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=12
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call 1
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 1024
          local.get 2
          i32.load offset=8
          i32.const 2
          i32.add
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.store offset=16
        end
        local.get 2
        local.get 2
        i32.load offset=8
        i32.const 3
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=12
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call 2
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 1024
          local.get 2
          i32.load offset=8
          i32.const 2
          i32.add
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.store offset=16
        end
        local.get 2
        local.get 2
        i32.load offset=8
        i32.const 3
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=12
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.const 1024
        local.get 2
        i32.load offset=8
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        i32.load
        call 3
        i32.store offset=4
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 1024
          local.get 2
          i32.load offset=8
          i32.const 2
          i32.add
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.store offset=16
        end
        local.get 2
        local.get 2
        i32.load offset=8
        i32.const 3
        i32.add
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    call 5
    local.get 2
    i32.load offset=16
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 5344))
  (global (;1;) i32 (i32.const 1240))
  (global (;2;) i32 (i32.const 5344))
  (export "memory" (memory 0))
  (export "__main_argc_argv" (func 6))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1024) "\ff\ff\ff\ff\00\00\00\80\01\00\00\00\ff\ff\ff\ffJ\08\10\00\1f\00\00\00\ff\ff\ff\ffUUUU\ff\ff\00\00\ff\ff\ff\ffU\0f\e0\88\ff\1f\00\00gE#\01\ff\ff\00\00gE\00\00gE#\01\00\00\ff\ff#\01\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80\01\00\00\00UUUUUUUU\ff\ff\00\00UUUU\aa\aa\aa\aa\00\00\00\00\de\bc\9ax\0f\0f\0f\0f\ce\8a\00\00\de\bc\9ax\f0\f0\f0\f0\bdy\00\00xV4\92\00\00\00\80\01\00\00\00xV4\12UU\03\f0\ec\04\00\00\00\00\00\80UU\03\f0\00 \00\00"))
