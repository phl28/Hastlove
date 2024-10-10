//
//  Supabase.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//

import Supabase
import Foundation

let supabase = SupabaseClient(
    supabaseURL: URL(string: ProcessInfo.processInfo.environment["SUPABASE_URL"] ?? "")!,
    supabaseKey: ProcessInfo.processInfo.environment["SUPABASE_KEY"] ?? ""
)
