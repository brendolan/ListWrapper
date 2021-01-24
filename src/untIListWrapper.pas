unit untIListWrapper;

interface

uses
  System.Generics.Collections, System.Types, System.Generics.Defaults;

type

  TDirection = System.Types.TDirection;

  IListWrapper<T> = interface
    ['{092BC12A-93F6-4CF9-9B39-6651D4CF3B15}']
    function Add(const Value: T): Integer;

    procedure AddRange(const Values: array of T); overload;
    procedure AddRange(const Collection: IEnumerable<T>); overload;
    procedure AddRange(const Collection: TEnumerable<T>); overload;

    procedure Insert(Index: Integer; const Value: T);

    procedure InsertRange(Index: Integer; const Values: array of T; Count: Integer); overload;
    procedure InsertRange(Index: Integer; const Values: array of T); overload;
    procedure InsertRange(Index: Integer; const Collection: IEnumerable<T>); overload;
    procedure InsertRange(Index: Integer; const Collection: TEnumerable<T>); overload;

    procedure Pack; overload;
    procedure Pack(const IsEmpty: TList<T>.TEmptyFunc); overload;

    function Remove(const Value: T): Integer;
    function RemoveItem(const Value: T; Direction: TDirection): Integer;
    procedure Delete(Index: Integer);
    procedure DeleteRange(AIndex, ACount: Integer);
    function ExtractItem(const Value: T; Direction: TDirection): T;
    function Extract(const Value: T): T;
    function ExtractAt(Index: Integer): T;

    procedure Exchange(Index1, Index2: Integer);
    procedure Move(CurIndex, NewIndex: Integer);

    function First: T;
    function Last: T;

    procedure Clear;

    function Expand: TList<T>;

    function Contains(const Value: T): Boolean;
    function IndexOf(const Value: T): Integer;
    function IndexOfItem(const Value: T; Direction: TDirection): Integer;
    function LastIndexOf(const Value: T): Integer;

    procedure Reverse;

    procedure Sort; overload;
    procedure Sort(const AComparer: IComparer<T>); overload;
    function BinarySearch(const Item: T; out Index: Integer): Boolean; overload;
    function BinarySearch(const Item: T; out Index: Integer; const AComparer: IComparer<T>): Boolean; overload;

    procedure TrimExcess;

    function ToArray: TArray<T>;

    function GetCapacity: Integer;
    procedure SetCapacity(Value: Integer);

    function GetCount: Integer;
    procedure SetCount(Value: Integer);

    function GetItem(Index: Integer): T;
    procedure SetItem(Index: Integer; const Value: T);

    function GetList: TList<T>.arrayofT;
    function GetPList: TList<T>.ParrayofT;

    function GetComparer: IComparer<T>;

    function GetOnNotify: TCollectionNotifyEvent<T>;
    procedure SetOnNotify(const Value: TCollectionNotifyEvent<T>);

    property Capacity: Integer read GetCapacity write SetCapacity;
    property Count: Integer read GetCount write SetCount;
    property Items[Index: Integer]: T read GetItem write SetItem;
    property List: TList<T>.arrayofT read GetList;
    property PList:TList<T>.ParrayofT read GetPList;
    property Comparer: IComparer<T> read GetComparer;

    property OnNotify: TCollectionNotifyEvent<T> read GetOnNotify write SetOnNotify;

    function GetEnumerator: TList<T>.TEnumerator;
  end;

implementation

end.
