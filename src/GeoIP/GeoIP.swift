import Foundation
import MMDB

open class GeoIP {
    public static let database = MMDB("mmdb_nekit")!

    public static func LookUp(_ ipAddress: String) -> MMDBCountry? {
        return GeoIP.database.lookup(ipAddress)
    }
}
