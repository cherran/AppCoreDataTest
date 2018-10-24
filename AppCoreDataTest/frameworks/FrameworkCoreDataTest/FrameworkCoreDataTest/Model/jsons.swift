//
//  jsons.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 23/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//

import Foundation

func nowString() -> String {
    
    let date = Date()
    let calender = Calendar.current
    let components = calender.dateComponents([.year,.month,.day,.hour,.minute,.second], from: date)
    
    let year = components.year
    let month = components.month
    let day = components.day
    let hour = components.hour
    let minute = components.minute
    let second = components.second
    
    let today_string = String(year!) + "-" + String(month!) + "-" + String(day!) + " " + String(hour!)  + ":" + String(minute!) + ":" +  String(second!)
    
    return today_string
    
}

let jsonMenuEntryInfo = """
    {
        "lan": "SPA",
        "tit": "Titulo \(nowString())",
        "img": "images/imagen.png"
    }
""".data(using: .utf8)!


let jsonMenuEntry = """
{
                                    "reft": "APP",
                                    "ref": "LIVE",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "TV EN VIVO \(nowString())",
                                            "img": "images/section/24?version=1539241134882"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "LIVE TV \(nowString())",
                                            "img": "images/section/24?version=1539241134882"
                                        }
                                    ]
                                }
""".data(using: .utf8)!


var jsonMenu = """
{
                            "id": 1,
                            "slotId": "MAIN_MENU",
                            "nod": [
                                {
                                    "reft": "CONTAINER",
                                    "ref": "Mirada_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "ON DEMAND",
                                            "img": "images/section/30"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "ON DEMAND",
                                            "img": "images/section/29"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "LIVE2VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/44"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/43"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "FUT_DE_10",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/46"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/45"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "BLIM_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/32"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/31"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "FOX_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/34"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/33"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "HBO_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/36"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/35"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "FAMILY_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "NIÑOS",
                                            "img": "images/section/38"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "KIDS",
                                            "img": "images/section/37"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "Rentals_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "PELÍCULAS PARA RENTAR",
                                            "img": "images/section/40"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "MOVIES TO RENT",
                                            "img": "images/section/39"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "Tutorials_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "TUTORIALES",
                                            "img": "images/section/42"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "TUTORIALS",
                                            "img": "images/section/41"
                                        }
                                    ]
                                },
                                {
                                    "reft": "APP",
                                    "ref": "MYSTUFF",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MIS CONTENIDOS",
                                            "img": "images/section/26"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "MIS CONTENIDOS",
                                            "img": "images/section/25"
                                        }
                                    ]
                                },
                                {
                                    "reft": "APP",
                                    "ref": "RENTALS",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MIS RENTAS",
                                            "img": "images/section/20"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "MY RENTALS",
                                            "img": "images/section/19"
                                        }
                                    ]
                                },
                                {
                                    "reft": "APP",
                                    "ref": "SUBSCRIPTIONS",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MEJORA TU TV",
                                            "img": "images/section/8"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "IMPROVE YOUR TV",
                                            "img": "images/section/7"
                                        }
                                    ]
                                }
                            ],
                            "loc": [
                                {
                                    "lan": "SPA",
                                    "tit": "Menu Principal Tv Remote"
                                },
                                {
                                    "lan": "ENG",
                                    "tit": "Menu Principal Tv Remote"
                                }
                            ]
                        
}
""".data(using: .utf8)!


let jsonEntero = """
    {
    "err": 0,
    "mes": "OK",
    "ver": 1538644320000,
    "vie": "editorial_home_menu_view",
    "cnt": [
        {
            "ctn": "MAIN_MENU_IPAD_REMOTE",
            "typ": "MENU",
            "mag": [
                {
                    "pag": [
                        {
                            "id": 1,
                            "slotId": "MAIN_MENU",
                            "nod": [
                                {
                                    "reft": "APP",
                                    "ref": "GUIDE",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "GUÍA",
                                            "img": "images/section/2"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "GUIDE",
                                            "img": "images/section/1"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "HIGHLIGHTS",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MY PRONTO EN TV",
                                            "img": "images/section/28"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "COMING SOON ON TV",
                                            "img": "images/section/27"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "Mirada_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "ON DEMAND",
                                            "img": "images/section/30"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "ON DEMAND",
                                            "img": "images/section/29"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "LIVE2VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/44"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/43"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "FUT_DE_10",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/46"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/45"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "BLIM_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/32"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/31"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "FOX_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/34"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/33"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "HBO_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "img": "images/section/36"
                                        },
                                        {
                                            "lan": "ENG",
                                            "img": "images/section/35"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "FAMILY_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "NIÑOS",
                                            "img": "images/section/38"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "KIDS",
                                            "img": "images/section/37"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "Rentals_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "PELÍCULAS PARA RENTAR",
                                            "img": "images/section/40"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "MOVIES TO RENT",
                                            "img": "images/section/39"
                                        }
                                    ]
                                },
                                {
                                    "reft": "CONTAINER",
                                    "ref": "Tutorials_VOD",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "TUTORIALES",
                                            "img": "images/section/42"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "TUTORIALS",
                                            "img": "images/section/41"
                                        }
                                    ]
                                },
                                {
                                    "reft": "APP",
                                    "ref": "MYSTUFF",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MIS CONTENIDOS",
                                            "img": "images/section/26"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "MIS CONTENIDOS",
                                            "img": "images/section/25"
                                        }
                                    ]
                                },
                                {
                                    "reft": "APP",
                                    "ref": "RENTALS",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MIS RENTAS",
                                            "img": "images/section/20"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "MY RENTALS",
                                            "img": "images/section/19"
                                        }
                                    ]
                                },
                                {
                                    "reft": "APP",
                                    "ref": "SUBSCRIPTIONS",
                                    "loc": [
                                        {
                                            "lan": "SPA",
                                            "tit": "MEJORA TU TV",
                                            "img": "images/section/8"
                                        },
                                        {
                                            "lan": "ENG",
                                            "tit": "IMPROVE YOUR TV",
                                            "img": "images/section/7"
                                        }
                                    ]
                                }
                            ],
                            "loc": [
                                {
                                    "lan": "SPA",
                                    "tit": "Menu Principal Tv Remote"
                                },
                                {
                                    "lan": "ENG",
                                    "tit": "Menu Principal Tv Remote"
                                }
                            ]
                        }
                    ],
                    "loc": [
                        {
                            "lan": "SPA",
                            "nam": "Menu Principal Tv Remote"
                        },
                        {
                            "lan": "ENG",
                            "nam": "Menu Principal Tv Remote"
                        }
                    ]
                }
            ]
        }
    ]
}

""".data(using: .utf8)!
