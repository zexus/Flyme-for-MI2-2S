.class public final enum Lmiui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/VariableType;

.field public static final enum INVALID:Lmiui/maml/data/VariableType;

.field public static final enum NUM:Lmiui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lmiui/maml/data/VariableType;

.field public static final enum OBJ:Lmiui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lmiui/maml/data/VariableType;

.field public static final enum STR:Lmiui/maml/data/VariableType;

.field public static final enum STR_ARR:Lmiui/maml/data/VariableType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    .line 6
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "NUM"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    .line 7
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "STR"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    .line 8
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "OBJ"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    .line 9
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "NUM_ARR"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    .line 10
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "STR_ARR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    .line 11
    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "OBJ_ARR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lmiui/maml/data/VariableType;

    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v0, "number"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    .line 27
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-string v0, "string"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    sget-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "object"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 20
    :cond_2
    const-string v0, "number[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    sget-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 22
    :cond_3
    const-string v0, "string[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    sget-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 24
    :cond_4
    const-string v0, "object[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    sget-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    goto :goto_0

    .line 27
    :cond_5
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lmiui/maml/data/VariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/VariableType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    invoke-virtual {v0}, [Lmiui/maml/data/VariableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/VariableType;

    return-object v0
.end method


# virtual methods
.method public isArray()Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
