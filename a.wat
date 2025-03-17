(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func))
  (import "env" "memcpy" (func (;0;) (type 1)))
  (func (;1;) (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.sub)
  (func (;2;) (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 3
    i32.load offset=12
    i32.store
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store offset=4)
  (func (;3;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    i32.load
    i32.lt_s
    i32.const 1
    i32.and
    i32.const 255
    i32.and)
  (func (;4;) (type 3) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=60
    local.get 5
    local.get 1
    i32.store offset=56
    local.get 5
    local.get 4
    i32.store offset=52
    local.get 5
    local.get 2
    i32.store offset=48
    local.get 5
    local.get 3
    i32.const 1
    i32.sub
    i32.store offset=44
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=48
        local.get 5
        i32.load offset=44
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        local.get 5
        i32.load offset=48
        local.get 5
        i32.load offset=44
        local.get 5
        i32.load offset=48
        i32.sub
        i32.const 2
        i32.div_s
        i32.add
        i32.store offset=40
        local.get 5
        i32.load offset=52
        local.set 0
        local.get 5
        i32.load offset=60
        local.set 1
        local.get 5
        i32.load offset=40
        local.set 2
        local.get 5
        local.get 5
        i32.load offset=60
        local.get 5
        i32.load offset=56
        i32.const 3
        i32.shl
        i32.add
        i64.load align=4
        i64.store offset=16
        local.get 5
        local.get 1
        local.get 2
        i32.const 3
        i32.shl
        i32.add
        i64.load align=4
        i64.store offset=8
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 16
            i32.add
            local.get 5
            i32.const 8
            i32.add
            local.get 0
            call_indirect (type 0)
            i32.const 255
            i32.and
            i32.const 0
            i32.const 255
            i32.and
            i32.ne
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 5
            i32.load offset=40
            i32.const 1
            i32.add
            i32.store offset=48
            br 1 (;@3;)
          end
          local.get 5
          local.get 5
          i32.load offset=40
          i32.store offset=44
        end
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.load offset=48
      local.get 3
      i32.const 1
      i32.sub
      i32.eq
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=52
      local.set 3
      local.get 5
      i32.load offset=60
      local.set 0
      local.get 5
      i32.load offset=48
      local.set 1
      local.get 5
      local.get 5
      i32.load offset=60
      local.get 5
      i32.load offset=56
      i32.const 3
      i32.shl
      i32.add
      i64.load align=4
      i64.store offset=32
      local.get 5
      local.get 0
      local.get 1
      i32.const 3
      i32.shl
      i32.add
      i64.load align=4
      i64.store offset=24
      local.get 5
      i32.const 32
      i32.add
      local.get 5
      i32.const 24
      i32.add
      local.get 3
      call_indirect (type 0)
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 5
      i32.load offset=48
      i32.const 1
      i32.add
      i32.store offset=48
    end
    local.get 5
    i32.load offset=48
    local.set 3
    local.get 5
    i32.const 64
    i32.add
    global.set 0
    local.get 3)
  (func (;5;) (type 4) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=44
    local.get 4
    local.get 3
    i32.store offset=40
    local.get 4
    local.get 1
    i32.const 1
    i32.add
    i32.store offset=36
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=36
        local.get 2
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 4
        i32.load offset=44
        local.get 4
        i32.load offset=36
        i32.const 3
        i32.shl
        i32.add
        i64.load align=4
        i64.store offset=24
        local.get 4
        local.get 4
        i32.load offset=36
        i32.store offset=20
        loop  ;; label = @3
          i32.const 0
          local.set 0
          block  ;; label = @4
            local.get 4
            i32.load offset=20
            local.get 1
            i32.gt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=40
            local.set 0
            local.get 4
            i32.load offset=44
            local.set 3
            local.get 4
            i32.load offset=20
            local.set 5
            local.get 4
            local.get 4
            i64.load offset=24
            i64.store offset=8
            local.get 4
            local.get 3
            local.get 5
            i32.const 1
            i32.sub
            i32.const 3
            i32.shl
            i32.add
            i64.load align=4
            i64.store
            local.get 4
            i32.const 8
            i32.add
            local.get 4
            local.get 0
            call_indirect (type 0)
            i32.const 255
            i32.and
            i32.const 0
            i32.ne
            local.set 0
          end
          block  ;; label = @4
            local.get 0
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=44
            local.get 4
            i32.load offset=20
            i32.const 3
            i32.shl
            i32.add
            local.get 4
            i32.load offset=44
            local.get 4
            i32.load offset=20
            i32.const 1
            i32.sub
            i32.const 3
            i32.shl
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 4
            local.get 4
            i32.load offset=20
            i32.const -1
            i32.add
            i32.store offset=20
            br 1 (;@3;)
          end
        end
        local.get 4
        i32.load offset=44
        local.get 4
        i32.load offset=20
        i32.const 3
        i32.shl
        i32.add
        local.get 4
        i64.load offset=24
        i64.store align=4
        local.get 4
        local.get 4
        i32.load offset=36
        i32.const 1
        i32.add
        i32.store offset=36
        br 0 (;@2;)
      end
    end
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;6;) (type 5) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=92
    local.get 5
    local.get 3
    i32.store offset=88
    local.get 5
    local.get 4
    i32.store offset=84
    local.get 5
    i32.const 0
    i32.store offset=76
    local.get 5
    i32.const 0
    i32.store offset=72
    local.get 5
    i32.const 0
    i32.store offset=68
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        call 1
        i32.const 32
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=92
        local.get 1
        local.get 2
        local.get 5
        i32.load offset=88
        call 5
        br 1 (;@1;)
      end
      local.get 5
      local.get 1
      local.get 2
      local.get 1
      i32.sub
      i32.const 2
      i32.div_s
      i32.add
      i32.store offset=80
      local.get 5
      i32.const 40
      i32.add
      local.get 1
      local.get 5
      i32.load offset=80
      call 2
      local.get 5
      local.get 5
      i64.load offset=40 align=4
      i64.store offset=56
      local.get 5
      i32.const 32
      i32.add
      local.get 5
      i32.load offset=80
      local.get 2
      call 2
      local.get 5
      local.get 5
      i64.load offset=32 align=4
      i64.store offset=48
      local.get 5
      i32.load offset=92
      local.get 5
      i32.load offset=56
      local.get 5
      i32.const 56
      i32.add
      i32.const 4
      i32.add
      i32.load
      local.get 5
      i32.load offset=88
      local.get 5
      i32.load offset=84
      call 6
      local.get 5
      i32.load offset=92
      local.get 5
      i32.load offset=48
      local.get 5
      i32.const 48
      i32.add
      i32.const 4
      i32.add
      i32.load
      local.get 5
      i32.load offset=88
      local.get 5
      i32.load offset=84
      call 6
      local.get 5
      i32.const 24
      i32.add
      local.get 5
      i32.load offset=92
      local.get 5
      i32.load offset=48
      local.get 5
      i32.load offset=56
      local.get 5
      i32.const 56
      i32.add
      i32.const 4
      i32.add
      i32.load
      local.get 5
      i32.load offset=88
      call 4
      local.get 5
      i32.load offset=60
      call 2
      local.get 5
      local.get 5
      i64.load offset=24 align=4
      i64.store offset=56
      local.get 5
      i32.load offset=84
      local.get 5
      i32.load offset=92
      local.get 5
      i32.load offset=56
      i32.const 3
      i32.shl
      i32.add
      local.get 5
      i32.load offset=56
      local.get 5
      i32.const 56
      i32.add
      i32.const 4
      i32.add
      i32.load
      call 1
      i32.const 3
      i32.shl
      call 0
      drop
      loop  ;; label = @2
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 5
          i32.load offset=76
          local.get 5
          i32.load offset=56
          local.get 5
          i32.const 56
          i32.add
          i32.const 4
          i32.add
          i32.load
          call 1
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=72
          local.get 5
          i32.load offset=48
          local.get 5
          i32.const 48
          i32.add
          i32.const 4
          i32.add
          i32.load
          call 1
          i32.lt_s
          local.set 1
        end
        block  ;; label = @3
          local.get 1
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=88
          local.set 1
          local.get 5
          i32.load offset=84
          local.set 2
          local.get 5
          i32.load offset=76
          local.set 0
          local.get 5
          local.get 5
          i32.load offset=92
          local.get 5
          i32.load offset=60
          local.get 5
          i32.load offset=72
          i32.add
          i32.const 3
          i32.shl
          i32.add
          i64.load align=4
          i64.store offset=16
          local.get 5
          local.get 2
          local.get 0
          i32.const 3
          i32.shl
          i32.add
          i64.load align=4
          i64.store offset=8
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.const 16
              i32.add
              local.get 5
              i32.const 8
              i32.add
              local.get 1
              call_indirect (type 0)
              i32.const 255
              i32.and
              i32.const 0
              i32.const 255
              i32.and
              i32.ne
              i32.const 1
              i32.and
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=92
              local.get 5
              i32.load offset=56
              local.get 5
              i32.load offset=68
              i32.add
              i32.const 3
              i32.shl
              i32.add
              local.get 5
              i32.load offset=84
              local.get 5
              i32.load offset=76
              i32.const 3
              i32.shl
              i32.add
              i64.load align=4
              i64.store align=4
              local.get 5
              local.get 5
              i32.load offset=76
              i32.const 1
              i32.add
              i32.store offset=76
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=92
            local.get 5
            i32.load offset=56
            local.get 5
            i32.load offset=68
            i32.add
            i32.const 3
            i32.shl
            i32.add
            local.get 5
            i32.load offset=92
            local.get 5
            i32.load offset=60
            local.get 5
            i32.load offset=72
            i32.add
            i32.const 3
            i32.shl
            i32.add
            i64.load align=4
            i64.store align=4
            local.get 5
            local.get 5
            i32.load offset=72
            i32.const 1
            i32.add
            i32.store offset=72
          end
          local.get 5
          local.get 5
          i32.load offset=68
          i32.const 1
          i32.add
          i32.store offset=68
          br 1 (;@2;)
        end
      end
      local.get 5
      i32.load offset=92
      local.get 5
      i32.load offset=56
      local.get 5
      i32.load offset=68
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get 5
      i32.load offset=84
      local.get 5
      i32.load offset=76
      i32.const 3
      i32.shl
      i32.add
      local.get 5
      i32.load offset=56
      local.get 5
      i32.const 56
      i32.add
      i32.const 4
      i32.add
      i32.load
      call 1
      local.get 5
      i32.load offset=76
      i32.sub
      i32.const 3
      i32.shl
      call 0
      drop
    end
    local.get 5
    i32.const 96
    i32.add
    global.set 0)
  (func (;7;) (type 6) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.tee 3
    i32.const 1872
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 3
    i32.load offset=24
    i32.const 3
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    i32.sub
    local.tee 2
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=16
    local.get 3
    i32.load offset=28
    local.set 2
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    i32.load offset=24
    call 2
    local.get 2
    local.get 3
    i32.load offset=8
    local.get 3
    i32.const 8
    i32.add
    i32.const 4
    i32.add
    i32.load
    local.get 3
    i32.load offset=20
    local.get 3
    i32.load offset=16
    call 6
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;8;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        br_if 0 (;@2;)
        local.get 2
        i32.const 10
        i32.store offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=4
        i32.const 2
        i32.div_s
        i32.lt_s
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 11
        i32.store offset=12
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.sub
        i32.eq
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 10
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.store offset=12
    end
    local.get 2
    i32.load offset=12)
  (func (;9;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    call 10
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;10;) (type 7) (result i32)
    i32.const 0
    i32.const 0
    i32.load offset=2672
    i32.const 1103515245
    i32.mul
    i32.const 12345
    i32.add
    i32.const 2147483647
    i32.and
    i32.store offset=2672
    i32.const 0
    i32.load offset=2672
    i32.const 16
    i32.shr_u)
  (func (;11;) (type 0) (param i32 i32) (result i32)
    (local i32 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 0
    local.get 2
    i32.load offset=12
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        call 10
        f64.convert_i32_u
        f64.const 0x1p+0 (;=1;)
        f64.mul
        f64.const 0x1.fffcp+14 (;=32767;)
        f64.div
        f64.const 0x1.4p+2 (;=5;)
        f64.mul
        local.get 0
        local.get 1
        i32.sub
        f64.convert_i32_s
        f64.add
        f64.const 0x1.4p+1 (;=2.5;)
        f64.sub
        local.tee 3
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f64_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;12;) (type 0) (param i32 i32) (result i32)
    (local i32 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.load offset=12
    local.set 0
    block  ;; label = @1
      block  ;; label = @2
        call 10
        f64.convert_i32_u
        f64.const 0x1p+0 (;=1;)
        f64.mul
        f64.const 0x1.fffcp+14 (;=32767;)
        f64.div
        f64.const 0x1.4p+2 (;=5;)
        f64.mul
        local.get 0
        f64.convert_i32_s
        f64.add
        f64.const 0x1.4p+1 (;=2.5;)
        f64.sub
        local.tee 3
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f64_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;13;) (type 0) (param i32 i32) (result i32)
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
    i32.load offset=12)
  (func (;14;) (type 0) (param i32 i32) (result i32)
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
    i32.load offset=8
    local.get 2
    i32.load offset=12
    i32.sub)
  (func (;15;) (type 0) (param i32 i32) (result i32)
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
    i32.const 1000)
  (func (;16;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        call 10
        f64.convert_i32_u
        f64.const 0x1p+0 (;=1;)
        f64.mul
        f64.const 0x1.fffcp+14 (;=32767;)
        f64.div
        f64.const 0x1.ccccccccccccdp-1 (;=0.9;)
        f64.le
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=12
      i32.const 2
      i32.sub
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;17;) (type 0) (param i32 i32) (result i32)
    (local i32 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        call 10
        f64.convert_i32_u
        f64.const 0x1p+0 (;=1;)
        f64.mul
        f64.const 0x1.fffcp+14 (;=32767;)
        f64.div
        f64.const 0x1p+2 (;=4;)
        f64.mul
        f64.const 0x1.f4p+9 (;=1000;)
        f64.add
        local.tee 3
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.trunc_f64_s
        local.set 0
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;18;) (type 8))
  (func (;19;) (type 8)
    (local i32)
    global.get 0
    i32.const 816
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=808
    local.get 0
    i32.const 400
    i32.add
    i32.const 1024
    i32.const 400
    call 0
    drop
    local.get 0
    i32.const 1424
    i32.const 400
    call 0
    local.tee 0
    i32.const 0
    i32.store offset=804
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=804
          i32.const 100
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 1872
            local.get 0
            i32.load offset=804
            i32.const 3
            i32.shl
            i32.add
            i32.load
            local.get 0
            i32.const 400
            i32.add
            local.get 0
            i32.load offset=804
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=804
            i32.store offset=812
            br 3 (;@1;)
          end
          local.get 0
          local.get 0
          i32.load offset=804
          i32.const 1
          i32.add
          i32.store offset=804
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 0
      i32.store offset=804
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=804
          i32.const 100
          i32.lt_s
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 1872
            local.get 0
            i32.load offset=804
            i32.const 3
            i32.shl
            i32.add
            i32.load offset=4
            local.get 0
            local.get 0
            i32.load offset=804
            i32.const 2
            i32.shl
            i32.add
            i32.load
            i32.ne
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.store offset=812
            br 3 (;@1;)
          end
          local.get 0
          local.get 0
          i32.load offset=804
          i32.const 1
          i32.add
          i32.store offset=804
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.const 1
      i32.store offset=812
    end
    local.get 0
    i32.const 816
    i32.add
    global.set 0)
  (func (;20;) (type 7) (result i32)
    (local i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=76
    call 18
    local.get 0
    i32.const 1
    i32.store offset=60
    local.get 0
    i32.const 48
    i32.add
    i32.const 0
    i32.load offset=1856
    i32.store
    local.get 0
    i32.const 40
    i32.add
    i32.const 0
    i64.load offset=1848
    i64.store
    local.get 0
    i32.const 32
    i32.add
    i32.const 0
    i64.load offset=1840
    i64.store
    local.get 0
    i32.const 0
    i64.load offset=1832
    i64.store offset=24
    local.get 0
    i32.const 0
    i64.load offset=1824
    i64.store offset=16
    local.get 0
    i32.const 100
    i32.store offset=72
    local.get 0
    i32.const 0
    i32.store offset=64
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=64
        i32.const 9
        i32.lt_u
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 0
        i32.store offset=68
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.load offset=68
            local.get 0
            i32.load offset=72
            i32.lt_s
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 0
            i32.load offset=68
            local.get 0
            i32.load offset=72
            local.get 0
            i32.const 16
            i32.add
            local.get 0
            i32.load offset=64
            i32.const 2
            i32.shl
            i32.add
            i32.load
            call_indirect (type 0)
            i32.store offset=8
            local.get 0
            local.get 0
            i32.load offset=68
            i32.store offset=12
            i32.const 1872
            local.get 0
            i32.load offset=68
            i32.const 3
            i32.shl
            i32.add
            local.get 0
            i64.load offset=8 align=4
            i64.store align=4
            local.get 0
            local.get 0
            i32.load offset=68
            i32.const 1
            i32.add
            i32.store offset=68
            br 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load offset=60
        call 7
        local.get 0
        local.get 0
        i32.load offset=64
        i32.const 1
        i32.add
        i32.store offset=64
        br 0 (;@2;)
      end
    end
    call 19
    local.get 0
    i32.const 80
    i32.add
    global.set 0
    i32.const 0)
  (func (;21;) (type 0) (param i32 i32) (result i32)
    call 20)
  (table (;0;) 11 11 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 6784))
  (global (;1;) i32 (i32.const 2676))
  (global (;2;) i32 (i32.const 6784))
  (export "memory" (memory 0))
  (export "main" (func 21))
  (export "__original_main" (func 20))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 3 8 9 11 12 13 14 15 16 17)
  (data (;0;) (i32.const 1024) "\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e8\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\e9\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\ea\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\eb\03\00\00\00\00\00\00\09\00\00\00\0e\00\00\00\10\00\00\00\11\00\00\00\13\00\00\00\15\00\00\00\1d\00\00\00#\00\00\00$\00\00\00&\00\00\00*\00\00\00.\00\00\001\00\00\003\00\00\00A\00\00\00L\00\00\00M\00\00\00N\00\00\00P\00\00\00T\00\00\00U\00\00\00Z\00\00\00a\00\00\00b\00\00\00\05\00\00\00\06\00\00\00\08\00\00\00\14\00\00\00\17\00\00\00\18\00\00\00\1a\00\00\00\1e\00\00\00\22\00\00\00+\00\00\00,\00\00\00-\00\00\00/\00\00\004\00\00\005\00\00\006\00\00\008\00\00\00?\00\00\00G\00\00\00H\00\00\00V\00\00\00W\00\00\00[\00\00\00_\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\1c\00\00\00 \00\00\00%\00\00\00'\00\00\00)\00\00\000\00\00\002\00\00\007\00\00\009\00\00\00:\00\00\00<\00\00\00>\00\00\00@\00\00\00B\00\00\00D\00\00\00E\00\00\00F\00\00\00I\00\00\00K\00\00\00O\00\00\00Q\00\00\00R\00\00\00S\00\00\00X\00\00\00\5c\00\00\00^\00\00\00c\00\00\00\07\00\00\00\0f\00\00\00\12\00\00\00\16\00\00\00\19\00\00\00\1b\00\00\00\1f\00\00\00!\00\00\00(\00\00\00;\00\00\00=\00\00\00C\00\00\00J\00\00\00Y\00\00\00]\00\00\00`\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00"))
