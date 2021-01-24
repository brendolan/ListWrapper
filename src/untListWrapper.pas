unit untListWrapper;

interface

uses
  untIListWrapper, System.Generics.Collections, System.Generics.Defaults;

type

  TListWrapper<T> = class(TInterfacedObject, IListWrapper<T>)
  private
    FList: TList<T>;
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
  public
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

    function GetEnumerator: TList<T>.TEnumerator;

    constructor Create; overload;
    constructor Create(const AComparer: IComparer<T>); overload;
    constructor Create(const Collection: TEnumerable<T>); overload;

    destructor Destroy; override;

    class function New: IListWrapper<T>; overload;
    class function New(const AComparer: IComparer<T>): IListWrapper<T>; overload;
    class function New(const Collection: TEnumerable<T>): TListWrapper<T>; overload;
  end;

implementation


{ TListWrapper<T> }

class function TListWrapper<T>.New: IListWrapper<T>;
begin
  Result := Self.Create;
end;

constructor TListWrapper<T>.Create;
begin
  FList := TList<T>.Create;
end;

constructor TListWrapper<T>.Create(const AComparer: IComparer<T>);
begin
  FList := TList<T>.Create(AComparer);
end;

function TListWrapper<T>.Add(const Value: T): Integer;
begin
  Result := FList.Add(Value);
end;

procedure TListWrapper<T>.AddRange(const Values: array of T);
begin
  FList.AddRange(Values);
end;

procedure TListWrapper<T>.AddRange(const Collection: IEnumerable<T>);
begin
  FList.AddRange(Collection);
end;

procedure TListWrapper<T>.AddRange(const Collection: TEnumerable<T>);
begin
  FList.AddRange(Collection);
end;

function TListWrapper<T>.BinarySearch(const Item: T; out Index: Integer): Boolean;
begin
  Result := FList.BinarySearch(Item, Index);
end;

function TListWrapper<T>.BinarySearch(const Item: T; out Index: Integer;
  const AComparer: IComparer<T>): Boolean;
begin
  Result := FList.BinarySearch(Item, Index, AComparer);
end;

procedure TListWrapper<T>.Clear;
begin
  FList.Clear;
end;

function TListWrapper<T>.Contains(const Value: T): Boolean;
begin
  Result := FList.Contains(Value);
end;

constructor TListWrapper<T>.Create(const Collection: TEnumerable<T>);
begin
   FList := TList<T>.Create(Collection);
end;

procedure TListWrapper<T>.Delete(Index: Integer);
begin
  FList.Delete(Index);
end;

procedure TListWrapper<T>.DeleteRange(AIndex, ACount: Integer);
begin
  FList.DeleteRange(AIndex, ACount);
end;

destructor TListWrapper<T>.Destroy;
begin
  FList.Free;
  inherited;
end;

procedure TListWrapper<T>.Exchange(Index1, Index2: Integer);
begin
  FList.Exchange(Index1, Index2);
end;

function TListWrapper<T>.Expand: TList<T>;
begin
  Result := FList.Expand;
end;

function TListWrapper<T>.Extract(const Value: T): T;
begin
  Result := FList.Extract(Value);
end;

function TListWrapper<T>.ExtractAt(Index: Integer): T;
begin
  Result := FList.ExtractAt(Index);
end;

function TListWrapper<T>.ExtractItem(const Value: T; Direction: TDirection): T;
begin
  Result := FList.ExtractItem(Value, Direction);
end;

function TListWrapper<T>.First: T;
begin
  Result := FList.First;
end;

function TListWrapper<T>.GetCapacity: Integer;
begin
  Result := FList.Capacity;
end;

function TListWrapper<T>.GetComparer: IComparer<T>;
begin
  Result := Flist.Comparer;
end;

function TListWrapper<T>.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TListWrapper<T>.GetEnumerator: TList<T>.TEnumerator;
begin
  Result := FList.GetEnumerator();
end;

function TListWrapper<T>.GetItem(Index: Integer): T;
begin
  Result := Flist.Items[Index];
end;

function TListWrapper<T>.GetList: TList<T>.arrayofT;
begin
  Result := FList.List;
end;

function TListWrapper<T>.GetOnNotify: TCollectionNotifyEvent<T>;
begin
  Result := Flist.OnNotify;
end;

function TListWrapper<T>.GetPList: TList<T>.ParrayofT;
begin
  Result := FList.PList;
end;

function TListWrapper<T>.IndexOf(const Value: T): Integer;
begin
  Result := FList.IndexOf(Value);
end;

function TListWrapper<T>.IndexOfItem(const Value: T; Direction: TDirection): Integer;
begin
  Result := FList.IndexOfItem(Value, Direction);
end;

procedure TListWrapper<T>.Insert(Index: Integer; const Value: T);
begin
  FList.Insert(Index, Value);
end;

procedure TListWrapper<T>.InsertRange(Index: Integer; const Values: array of T; Count: Integer);
begin
  FList.InsertRange(Index, Values, Count);
end;

procedure TListWrapper<T>.InsertRange(Index: Integer; const Values: array of T);
begin
  FList.InsertRange(Index, Values);
end;

procedure TListWrapper<T>.InsertRange(Index: Integer;
  const Collection: IEnumerable<T>);
begin
  FList.InsertRange(Index, Collection);
end;

procedure TListWrapper<T>.InsertRange(Index: Integer; const Collection: TEnumerable<T>);
begin
  FList.InsertRange(Index, Collection);
end;

function TListWrapper<T>.Last: T;
begin
  Result := FList.Last;
end;

function TListWrapper<T>.LastIndexOf(const Value: T): Integer;
begin
  Result := Flist.LastIndexOf(Value);
end;

procedure TListWrapper<T>.Move(CurIndex, NewIndex: Integer);
begin
  FList.Move(CurIndex, NewIndex);
end;

class function TListWrapper<T>.New(const Collection: TEnumerable<T>): TListWrapper<T>;
begin
  Result := Self.Create(Collection);
end;

procedure TListWrapper<T>.Pack(const IsEmpty: TList<T>.TEmptyFunc);
begin
  FList.Pack(IsEmpty);
end;

procedure TListWrapper<T>.Pack;
begin
  FList.Pack;
end;

function TListWrapper<T>.Remove(const Value: T): Integer;
begin
  Result := FList.Remove(Value);
end;

function TListWrapper<T>.RemoveItem(const Value: T; Direction: TDirection): Integer;
begin
  Result := FList.RemoveItem(Value, Direction);
end;

procedure TListWrapper<T>.Reverse;
begin
  FList.Reverse;
end;

procedure TListWrapper<T>.Sort;
begin
  FList.Sort;
end;

procedure TListWrapper<T>.SetCapacity(Value: Integer);
begin
  FList.Capacity := Value;
end;

procedure TListWrapper<T>.SetCount(Value: Integer);
begin
  FList.Count := Value;
end;

procedure TListWrapper<T>.SetItem(Index: Integer; const Value: T);
begin
  FList.Items[Index] := Value;
end;

procedure TListWrapper<T>.SetOnNotify(const Value: TCollectionNotifyEvent<T>);
begin
  FList.OnNotify := Value;
end;

procedure TListWrapper<T>.Sort(const AComparer: IComparer<T>);
begin
  FList.Sort(AComparer);
end;

function TListWrapper<T>.ToArray: TArray<T>;
begin
  Result := FList.ToArray;
end;

procedure TListWrapper<T>.TrimExcess;
begin
  FList.TrimExcess;
end;

class function TListWrapper<T>.New(const AComparer: IComparer<T>): IListWrapper<T>;
begin
  Result := Self.Create(AComparer);
end;

end.
