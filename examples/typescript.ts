type Foo = {
  a: number;
  bar: {
    baz: 'on' | 'off' | boolean;
  };
};

type Foo2 = Omit<Foo, 'a'> & {
  b: 123 | 1234;
};

const variable: Foo = {
  a: 12,
  bar: {
    baz: 'on',
  },
};

class Generic<T extends Record<string, any> = any> {
  property: T;
}

class Clazz extends Generic<Foo2> {
  method() {
    return this.property.bar.baz === true ? "It's on" : 'Failed';
  }
}
