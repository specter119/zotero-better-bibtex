namespace CSL {
  namespace Date {
    export interface Open {
      year: 0
    }

    export interface Year {
      year: number
      circa?: boolean
    }

    export interface Month {
      year: number
      month: number
      circa?: boolean
    }

    export interface Day {
      year: number
      month: number
      day: number
      circa?: boolean
    }

    export interface Season {
      year: number
      season: number
      circa?: boolean
    }

    export interface Verbatim {
      literal: string
    }

    export type Date = Open | Open | Month | Day | Season | Verbatim
  }
}

