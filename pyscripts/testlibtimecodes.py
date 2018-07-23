#libtimecodes test
import libtimecodes

projectPath="/cygdrive/c/Users/thomas/Dropbox/current_zazanim_projects/mechagirl/realbegin"

exportpath="/cygdrive/c/tmp/zazexport"

ret=libtimecodes.multiplyRemanentFrames(projectPath,exportpath)

print(ret)
