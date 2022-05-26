import random
import string


def gen_unique_id():
    return "".join(random.choice(string.digits + string.ascii_letters) for _ in range(12))
