//
//  ImageModel.swift
//  PinterestProyect
//
//  Created by Suite on 14/11/23.
//

import Foundation

struct ImageModel: Identifiable{
    var id = UUID()
    var name: String

    static let images: [ImageModel] = [
        ImageModel(name: "image1"),
        ImageModel(name: "image2"),
        ImageModel(name: "image3"),
        ImageModel(name: "image4"),
        ImageModel(name: "image5"),
        ImageModel(name: "image6"),
        ImageModel(name: "image7"),
        ImageModel(name: "image8"),
        ImageModel(name: "image9"),
        ImageModel(name: "image10"),
        ImageModel(name: "image11"),
        ImageModel(name: "image12"),
        ImageModel(name: "image13"),
        ImageModel(name: "image14"),
        ImageModel(name: "image15"),
        ImageModel(name: "image16"),
        ImageModel(name: "image17"),
        ImageModel(name: "image18"),
        ImageModel(name: "image19")
    ]
}

