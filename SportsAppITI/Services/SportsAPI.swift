//
//  SportsAPI.swift
//  SportsAppITI
//
//  Created by Engy on 8/13/24.
//

import Foundation

enum SportsAPI {
    
    case getAllLeagues(sportsName: String)
    case getUpcomingEvents(leagueId: String, fromDate: String, toDate: String)
    case getLatestResults(leagueId: String, fromDate: String, toDate: String)
    case getAllTeamsInLeague(leagueId: String)
    case getTeamDetails(teamId: String)

    private var apiKey: String {
        return "f388c6b66cb3de08a66bad91a62079ed4b733ed8a6719ad9010b2391ad9a90e2"
    }
    private var baseURL: String {
        return "https://apiv2.allsportsapi.com"
    }

    func url() -> String {
        switch self {
        case .getAllLeagues(let sportsName):
            return "\(baseURL)/\(sportsName)/?met=Leagues&APIkey=\(apiKey)"

        case .getUpcomingEvents(let leagueId, let fromDate, let toDate):
            return "\(baseURL)/football?met=Fixtures&leagueId=\(leagueId)&from=\(fromDate)&to=\(toDate)&APIkey=\(apiKey)"

        case .getLatestResults(let leagueId, let fromDate, let toDate):
            return "\(baseURL)/football?met=Fixtures&leagueId=\(leagueId)&from=\(fromDate)&to=\(toDate)&APIkey=\(apiKey)"

        case .getAllTeamsInLeague(let leagueId):
            return "\(baseURL)/football/?met=Teams&leagueId=\(leagueId)&APIkey=\(apiKey)"

        case .getTeamDetails(let teamId):
            return "\(baseURL)/football/?met=Teams&teamId=\(teamId)&APIkey=\(apiKey)"
        }
    }
}

