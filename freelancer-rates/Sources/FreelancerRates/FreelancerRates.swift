func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyvalue: Double = dailyRateFrom(hourlyRate: hourlyRate) * 22
    let discountValue: Double =  monthlyvalue * discount / 100
    return Double(monthlyvalue - discountValue).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyWithDiscount: Double = (dailyRateFrom(hourlyRate: hourlyRate) * discount / 100) * 8
    let calculate: Double = budget / Double(dailyWithDiscount).rounded(.down)
    return Double(calculate).rounded(.down)
}

