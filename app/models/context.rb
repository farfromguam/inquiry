class Context < ActiveRecord::Base

  # music free assoiciation gives us sound/emotion contex data
  # prompted free assoiciation gives us concept/emotion context data
  # lots of context data gives a context mesh
  # use context mesh for good.

  # con·text / ˈkäntekst /
  # the circumstances that form the setting for an event, statement, or idea, and in terms of which it can be fully understood and assessed.

  belongs_to :contextable, polymorphic: true


end



tags.attrs
  description: serious
  context:
  percent: 0-100%

[serious|100%] question:
  how did you deal with your moms death

[serious|80%] question:
  how did you deal with your crazy aunts death

[serious|20%] question:
  how did you deal with your car dying.


tag_finger_print: combination of the tags and percent
EX [work:80, serious:100]
these questions have a similar fingerprint
- what do you do?
- how much modey do you make?
