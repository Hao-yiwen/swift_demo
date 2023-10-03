enum PrinterError: Error {
	case outOfPaper
	case noToner
	case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.onFire
    }
    return "Job sent"
}

// do {
//     let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
//     print(printerResponse)
// } catch {
//     print(error)
// }

do {
    let printerResponse = try? send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}