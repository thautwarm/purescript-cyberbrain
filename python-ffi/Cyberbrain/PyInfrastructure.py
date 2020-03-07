import builtins
import operator

builtins = builtins.__dict__
operator = operator.__dict__


class failwith(Exception):
    pass


def coerce(x):
    return x


size = len


def _0(x):
    return x[0]


def _1(x):
    return x[1]


def runBuffer(init):
    def ap_buf(m):
        xs = list(init)
        return m(xs), xs

    return ap_buf


def push(x):
    return lambda xs: xs.append(x)


pop = list.pop


def contains(e):
    return lambda xs: e in xs


def get(i):
    return lambda xs: xs[i]


def set(i):
    def ap_value(v):
        def ap_buf(xs):
            xs[i] = v

        return ap_buf

    return ap_value


def append(ext):
    def ap_buf(xs):
        xs.extend(ext)

    return ap_buf


def map_buffer(f):
    def ap(m):
        return lambda xs: f(m(xs))

    return ap


def apply_buffer(fm):
    def ap(m):
        return lambda xs: fm(xs)(m(xs))

    return ap


def pure_buffer(v):
    return lambda _: v


def bind_buffer(m):
    def ap_k(k):
        def ap_buf(xs):
            return k(m(xs))(xs)

        return ap_buf

    return ap_k
