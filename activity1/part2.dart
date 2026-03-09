enum Priority { low, mid, high }

void main() {
  
  Priority myPriority = Priority.high;
  print(myPriority); 
}

extension PriorityExtension on Priority {
  String get label {
    switch (this) {
    case Priority.low: return "Low";
    case Priority.mid: return "Mid";
    case Priority.high: return "High";
    }
  }
}

enum Category { personal, work, health, creative }

extension CategoryExtension on Category {
  String get emoji {
    switch (this) {
      case Category.personal: return "🌿";
      case Category.work: return "⚡";
      case Category.health: return "🔥";
      case Category.creative: return "☁️";
    }
  }
}


