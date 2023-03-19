//

//  ContentView.swift

//  lab4

//

//  Created by gurpreet on 2/26/23.

//


import SwiftUI


struct ContentView: View {



    @State private var cityCode: String = ""



    var body: some View {

        NavigationView {

            VStack {

                //start of cities

                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KBOS"))

                    {

                        Text("BOSTON")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button





                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KNYC"))

                    {

                        Text("NYC")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button



                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KMIA"))

                    {

                        Text("MIAMI")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button



                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KDAL"))

                    {

                        Text("DALLAS")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button



                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KDEN"))

                    {

                        Text("DENVER")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button



                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KLAX"))

                    {

                        Text("LA")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button



                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KSEA"))

                    {

                        Text("SEATTLE")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button



                Button(action: {

                    //implement the code

                }, label: {

                    NavigationLink(destination: WeatherCityView(cityCode: "KDET"))

                    {

                        Text("DETROIT")

                            .padding()

                            .foregroundColor(Color.blue)

                            .font(.largeTitle)

                    }

                })//end of button









            }//end vstack

            .padding()

        }//end nav view

    }//end body

} //end struct


struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}
