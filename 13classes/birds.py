class Bird:
    def __init__(self, kind, call):
        self.kind = kind
        self.call = call

    def do_call(self):
        print 'a %s goes %s' % (self.kind, self.call)


class Parrot(Bird):
    def __init__(self):
        Bird.__init__(self, 'Parrot', 'Kah!')
        self.learned_phrases = set()

    def learn_phrase(self, phrase):
        self.learned_phrases.add(phrase)

    def do_call(self):
        Bird.do_call(self)
        print '\n'.join(self.learned_phrases)
