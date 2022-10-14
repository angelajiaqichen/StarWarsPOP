/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
/*
struct MasterYoda {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 9 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct DarthTyrannous {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
  func forceLightning() -> Bool { return true }
}
*/
/*:
 Place your refactored structs below:
 */
protocol General_Char {
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

extension General_Char {
  func lightSaberSkill() -> Int {
    return 8
  }
  func telekinesis() -> Int {
    return 5
  }
  func prescience() -> Int {
    return 5
  }
}


protocol Master {
  func introspection() -> String
  func mindControl() -> String
}
extension Master {
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "Do or do not." }
}


protocol Darth {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}
extension Darth {
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}



struct MasterYoda {}
struct MasterObiWan {}
struct MasterQuiGon {}
struct DarthVader {}
struct DarthSidious {}
struct DarthTyrannous {}


//protocol JediSith: Light, Telek, Pre {}

extension MasterYoda: General_Char, Master {
  func telekinesis() -> Int { return 9 }
}

extension MasterObiWan: General_Char, Master {
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

extension MasterQuiGon: General_Char, Master {
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
  func mindControl() -> String { return "Republic credits will do." }
}

extension DarthVader: General_Char, Darth {
  func lightSaberSkill() -> Int { return 9 }
  func forceLightning() -> Bool { return false }
  func telekinesis() -> Int { return 8 }
}

extension DarthSidious: General_Char, Darth {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

extension DarthTyrannous: General_Char, Darth {
  func forceChoke() -> Bool { return false }
}
