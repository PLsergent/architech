from facial_recognition import is_recognized

def test(arg):
    if is_recognized("pl.jpg","leOinj.jpg"):
        return arg + "face detected"
    else:
        return arg + "face not detected"
