import requests
import json
import pandas as pd
import csv
import dataextract as tde
from PlayerDict import players

with open('NBAShotChartData.csv', 'w') as csvfile: #Creates a .csv named NBAShotChartData in the same directory as this script
    fieldnames = ["SHOT_NUMBER","GRID_TYPE","GAME_ID","GAME_EVENT_ID","PLAYER_ID","PLAYER_NAME","TEAM_ID","TEAM_NAME","PERIOD","MINUTES_REMAINING","SECONDS_REMAINING","EVENT_TYPE","ACTION_TYPE","SHOT_TYPE","SHOT_ZONE_BASIC","SHOT_ZONE_AREA","SHOT_ZONE_RANGE","SHOT_DISTANCE","LOC_X","LOC_Y","SHOT_ATTEMPTED_FLAG","SHOT_MADE_FLAG"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()

def shot_charts(player):
    shot_chart_url = 'http://stats.nba.com/stats/playerdashptshots?DateFrom=&DateTo=&GameSegment=&LastNGames=0&LeagueID=00&Location=&Month=0&OpponentTeamID=0&Outcome=&PerMode=PerGame&Period=0&PlayerID=202322&Season=2017-18&SeasonSegment=&SeasonType=Regular+Season&TeamID=0&VsConference=&VsDivision='
    response = requests.get(shot_chart_url)
    data = json.loads(response.text)
    headers = data['resultSets'][0]['headers']
    shot_data = data['resultSets'][0]['rowSet']    
    df = pd.DataFrame(shot_data, columns=headers) 
    with open('NBAShotChartData.csv', 'a') as f:
        df.to_csv(f, header=False)

for player in players:  
    shot_charts(player)
    
