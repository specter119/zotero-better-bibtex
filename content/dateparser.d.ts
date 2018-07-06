namespace Zotero {
  namespace BetterBibTeX {
    namespace Date {

      interface Open {
        type: 'open'
      }

      interface Year {
        type: 'date'
        year: number
        approximate?: boolean
        uncertain?: boolean
      }

      interface Month {
        type: 'date'
        year: number
        month: number
        approximate?: boolean
        uncertain?: boolean
      }

      interface Day {
        type: 'date'
        year: number
        month: number
        day: number
        approximate?: boolean
        uncertain?: boolean
      }

      interface Season {
        type: 'season'
        year: number
        month: number
        approximate?: boolean
        uncertain?: boolean
      }

      interface Interval {
        type: 'interval'
        from: Year | Month | Day | Season | Open
        to: Year | Month | Day | Season | Open
      }

      interface Verbatim {
        type: 'verbatim'
        verbatim: string
      }

      interface List {
        type: 'list'
        dates: Array<Open | Year | Month | Day | Season | Verbatim | Interval>
      }

      type Date = Open | Year | Month | Day | Season | Interval | Verbatim | List
    }
  }
}
