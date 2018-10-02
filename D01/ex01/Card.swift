import AppKit

class Card: NSObject {
	var _color: Color
	var _value: Value

	init(Color color:Color, Value value:Value) {
		self._color = color
		self._value = value
		//super.init()
	}

	overide var description: String {
		return "\(self._color) \(self._value)"
	}

	overide func isEqual(to: Any?) -> Bool {
		if let Obj = to as? Card {
			return (Obj._color == self._color && Obj._value == self._value)
		}
		return false
	}
}