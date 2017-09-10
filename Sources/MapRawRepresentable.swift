public
extension RawRepresentable
{
    func map<U>(_ transform: (RawValue) throws -> U ) rethrows -> U
    {
        return try transform(rawValue)
    }
    
    func flatMap<U>(_ transform: (RawValue) throws -> U? ) rethrows -> U?
    {
        if
            let result = try transform(rawValue)
        {
            return result
        }
        else
        {
            return nil
        }
    }
}
