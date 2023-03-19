//  WeatherCityView.swift

//  lab4

//

//  Created by gurpreet on 2/26/23.

//


import SwiftUI


struct WeatherCityView: View {



    @State var cityCode:String



    @State private var title:String = ""

    @State private var cityPicture:String = ""

    @State private var xmlWeatherTagData:String = ""

    @State private var weatherPicture:String = ""

    @State private var xmlData:String = ""



    @State private var locationTagData:String = ""

    @State private var tempfTagData:String = ""

    @State private var tempcTagData:String = ""

    @State private var stationTagData:String = ""

    @State private var visibilityTagData:String = ""

    @State private var dewfTagData:String = ""

    @State private var dewcTagData:String = ""





    var body: some View {

        VStack {

            Text(title)

                .fontWeight(.medium)

            Image(cityPicture)

                .resizable()

            Text(xmlWeatherTagData)



            Image(weatherPicture)

                .resizable()

            Text(locationTagData)



            Group{

                Text(tempfTagData)

                Text(tempcTagData)



            }



            Text(stationTagData)



            Text(visibilityTagData)



            Group{

                Text(dewfTagData)

                Text(dewcTagData)

            }

            //Text(xmlData)

        }

        .task {

            await fetchWeatherData(cityCode: cityCode)

        }

    }

    func fetchWeatherData(cityCode: String) async{

        //create url first

        let urlString = "http://w1.weather.gov/xml/current_obs/" + cityCode + ".xml"



        //case test

        guard let url = URL(string: urlString)

        else{

            print("URL doesn't work")

            return

        }



        //perform http request

        let task = URLSession.shared.dataTask(with: url) {

            (data,response,error) in

            //check for error

            if let error = error {

                print("error took place \(error)")

                return

            }

            //vars to use

            var tempString = ""



            var weatherTagData = ""





            //convert http response data to a string

            if let data = data, let dataString = String(data: data, encoding: .utf8)

            {

                //get the weather tag data



                let weatherTokens = dataString.components(separatedBy: "weather>")

                var arraySize = weatherTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in weatherTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    weatherTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let locationTokens = dataString.components(separatedBy: "location>")

                arraySize = locationTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in locationTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    locationTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let tempfTokens = dataString.components(separatedBy: "temp_f>")

                arraySize = tempfTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in tempfTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    tempfTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let tempcTokens = dataString.components(separatedBy: "temp_c>")

                arraySize = tempcTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in tempcTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    tempcTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let stationTokens = dataString.components(separatedBy: "station_id>")

                arraySize = stationTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in stationTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    stationTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let visibilityTokens = dataString.components(separatedBy: "visibility_mi>")

                arraySize = visibilityTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in visibilityTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    visibilityTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let dewfTokens = dataString.components(separatedBy: "dewpoint_f>")

                arraySize = dewfTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in dewfTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    dewfTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }



                let dewcTokens = dataString.components(separatedBy: "dewpoint_c>")

                arraySize = dewcTokens.count

                if arraySize >= 2 {

                    var counter = 1

                    for i in dewcTokens {

                        if counter == 2 {

                            tempString = i

                        }

                        counter = counter + 1

                    }

                    dewcTagData = tempString.replacingOccurrences(of: "</", with: "", options: .literal, range: nil)

                }





                xmlWeatherTagData = weatherTagData

                weatherPicture = weatherTagData

                xmlData = dataString


                if cityCode == "KBOS" {

                    title = "BOSTON SKYLINE"

                    cityPicture = "Boston"



                }



                if cityCode == "KNYC" {

                    title = "NEW YORK CENTRAL PARK"

                    cityPicture = "NYC"



                }

                if cityCode == "KMIA" {

                    title = "MIAMI AIRPORT"

                    cityPicture = "Miami"



                }

                if cityCode == "KDAL" {

                    title = "DALLAS FIELD"

                    cityPicture = "Dallas"



                }



                if cityCode == "KDEN" {

                    title = "DENVER AIRPORT"

                    cityPicture = "Denver"



                }

                if cityCode == "KLAX" {

                    title = "LOS ANGLES AIRPORT"

                    cityPicture = "LA"



                }



                if cityCode == "KSEA" {

                    title = "SEATTLE AIRPORT"

                    cityPicture = "Seattle"



                }

                if cityCode == "KDET" {

                    title = "DETROIT AIRPOT"

                    cityPicture = "Detroit"

                }









            }





        }//end let data

        task.resume()

    }//end function

}


struct WeatherCityView_Previews: PreviewProvider {



    @State static var cityCode: String = ""



    static var previews: some View {

        WeatherCityView(cityCode: cityCode)

    }

}
