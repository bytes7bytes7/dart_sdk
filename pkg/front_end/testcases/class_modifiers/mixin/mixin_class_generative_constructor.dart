// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

mixin class ErrorMixinClass {
  final int foo;
  ErrorMixinClass(this.foo);
}

mixin class ErrorMixinClassNamed {
  final int foo;
  ErrorMixinClassNamed.named(this.foo);
}

mixin class ErrorMixinClassRedirect {
  int foo = 0;
  ErrorMixinClassRedirect.named(int f) { this.foo = f; }
  ErrorMixinClassRedirect.x(int f) : this.named(f);
}

mixin class ErrorMixinClassExternal {
  external ErrorMixinClassExternal();
}

mixin class ErrorMixinClassSuper {
  ErrorMixinClassSuper(): super();
}

mixin class ErrorMixinClassBody {
  ErrorMixinClassBody() {}
}

mixin class MixinClassConstructor {
  int foo = 0;
  MixinClassConstructor();
  MixinClassConstructor.named();
}

mixin class ConstMixinClassConstructor {
  final int foo = 0;
  const ConstMixinClassConstructor();
  const ConstMixinClassConstructor.named();
}

mixin class MixinClassFactory {
  int foo = 0;
  MixinClassFactory();
  MixinClassFactory.named();
  factory MixinClassFactory.x() = MixinClassFactory.named;
  factory MixinClassFactory.y() = MixinClassFactory;
  factory MixinClassFactory.z() { return MixinClassFactory(); }
}
