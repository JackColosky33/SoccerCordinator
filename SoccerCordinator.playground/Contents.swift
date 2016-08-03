// All the players have there own dictonary to store their name, height, soccer experience, and guardians name

let jSmith : [String : Any] = ["Name" : "Joe Smith", "Height" : 42, "Soccer Expo" : true, "Guardian" :
"Jim and Jan Smith"]
let jTanner : [String : Any] = ["Name" : "Jill Tanner", "Height" : 36, "Soccer Expo" : true, "Guardian" : "Clara Tanner"]
let bBon : [String : Any] = ["Name" : "Bill Bon", "Height" : 43, "Soccer Expo" : true, "Guardian" : "Sara and Jenny Bon"]
let eGordan : [String : Any] = ["Name" : "Eva Gordan", "Height" : 45, "Soccer Expo" : false, "Guardian" : "Wendy and Mike Gordan"]
let mGill : [String : Any] = ["Name" : "Matt Gill", "Height" : 40, "Soccer Expo" : false, "Guardian" : "Charles and Sylvia Gill"]
let kStein : [String : Any] = ["Name" : "Kimmy Stein", "Height" : 41, "Soccer Expo" : false, "Guardian" : "Bill and Hillary Stein"]
let sAdams : [String : Any] = ["Name" : "Sammy Adams", "Height" : 45, "Soccer Expo" : false, "Guardian" : "Jeff Adams"]
let kSaygan : [String : Any] = ["Name" : "Karl Saygan", "Height" : 42, "Soccer Expo" : true, "Guardian" : "Heather Bledsoe"]
let sGreenberg : [String : Any] = ["Name" : "Suzane Greenberg", "Height" : 44, "Soccer Expo" : true, "Guardian" : "Henrietta Dumas"]
let sDali : [String : Any] = ["Name" : "Sal Dali", "Height" : 41, "Soccer Expo" : false, "Guardian" : "Gala Dali"]
let jKavalier : [String : Any] = ["Name" : "Joe Kavalier", "Height" : 39, "Soccer Expo" : false, "Guardian" : "Sam and Elaine Kavalier"]
let bFinkelstein : [String : Any] = ["Name" : "Ben Finkelstein", "Height" : 44, "Soccer Expo" : false, "Guardian" : "Arron and Jill Finkelstein"]
let dSoto : [String : Any] = ["Name" : "Diego Soto", "Height" : 41, "Soccer Expo" : true, "Guardian" : "Robbin and Sarika Soto"]
let cAlaska : [String : Any] = ["Name" : "Chloe Alaska", "Height" : 47, "Soccer Expo" : false, "Guardian" : "David and Jamie Alaska"]
let aWillis : [String : Any] = ["Name" : "Arnold Willis", "Height" : 43, "Soccer Expo" : false, "Guardian" : "Claire Willis"]
let pHelm : [String : Any] = ["Name" : "Phillip Helm", "Height" : 44, "Soccer Expo" : true, "Guardian" : "Thomas Helm and Eva Jones"]
let lClay : [String : Any] = ["Name" : "Les Clay", "Height" : 42, "Soccer Expo" : true, "Guardian" : "Wynonna Brown"]
let hKrustofski : [String : Any] = ["Name" : "Herschel Krustofski", "Height" : 45, "Soccer Expo" : true, "Guardian" : "Hyman and Rachel Krustofski"]

// An array to store all the dictonaries

let playerRoster = [jSmith, jTanner, bBon, eGordan, mGill, kStein, sAdams, kSaygan, sGreenberg, sDali, jKavalier, bFinkelstein, dSoto, cAlaska, aWillis, pHelm, lClay, hKrustofski]

//teams 

var sharks : [[String : Any]] = []
var dragons : [[String : Any]] = []
var raptors : [[String : Any]] = []

//The types of players

var experPlayers : [[String : Any]] = []
var unexperPlayers : [[String : Any]] = []

// Sorting the players

for player in playerRoster {
    if player["Soccer Expo"] as! Bool == true {
        experPlayers.append(player)
    } else {
        unexperPlayers.append(player)
    }
}

// Sorting the experienced players

for player in experPlayers {
    if 3 > sharks.count {
        sharks.append(player)
    } else if 3 > dragons.count {
        dragons.append(player)
    } else if 3 > raptors.count {
        raptors.append(player)
    } else {
        print("YA DUN MESSED UP")
    }
}

// Sorting the unexperienced players

for player in unexperPlayers {
    if 6 > sharks.count {
        sharks.append(player)
    } else if 6 > dragons.count {
        dragons.append(player)
    } else if 6 > raptors.count {
        raptors.append(player)
    } else {
        print("YA DUN MESSED UP")
    }
}

// Letter for the parents

func letter(Guardian : Any, player : Any, team : Any, practiceTime : Any, team1 : Any) {

let letter = "Hello \(Guardian), we would like to infrom you that your child \(player) has been selected for the \(team)! Our first practice wil begin on \(practiceTime). We are excited to have a great season, go \(team)! "

print(letter)

}
    
for player in sharks {
    if sharks.count == 6 {
        letter(player["Guardian"], player: player["Name"], team: "Sharks", practiceTime: "August 1st at 3:30", team1: "Sharks")
    
    }
}

for player in dragons {
    if dragons.count == 6 {
        letter(player["Guardian"], player: player["Name"], team: "Dragons", practiceTime: "August 2nd at 3:30", team1: "Dragons")
    }
}

for player in raptors {
    if raptors.count == 6 {
        letter(player["Guardian"], player: player["Name"], team: "Raptors", practiceTime: "August 3rd at 3:30", team1: "Raptors")
    }
}



