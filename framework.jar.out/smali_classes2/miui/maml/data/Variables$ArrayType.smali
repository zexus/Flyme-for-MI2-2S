.class public final enum Lmiui/maml/data/Variables$ArrayType;
.super Ljava/lang/Enum;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/Variables$ArrayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/Variables$ArrayType;

.field public static final enum DOUBLE:Lmiui/maml/data/Variables$ArrayType;

.field public static final enum OBJECT:Lmiui/maml/data/Variables$ArrayType;

.field public static final enum STRING:Lmiui/maml/data/Variables$ArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    new-instance v0, Lmiui/maml/data/Variables$ArrayType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Variables$ArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Variables$ArrayType;->DOUBLE:Lmiui/maml/data/Variables$ArrayType;

    .line 229
    new-instance v0, Lmiui/maml/data/Variables$ArrayType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/Variables$ArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Variables$ArrayType;->STRING:Lmiui/maml/data/Variables$ArrayType;

    .line 230
    new-instance v0, Lmiui/maml/data/Variables$ArrayType;

    const-string v1, "OBJECT"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/Variables$ArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Variables$ArrayType;->OBJECT:Lmiui/maml/data/Variables$ArrayType;

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/maml/data/Variables$ArrayType;

    sget-object v1, Lmiui/maml/data/Variables$ArrayType;->DOUBLE:Lmiui/maml/data/Variables$ArrayType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/Variables$ArrayType;->STRING:Lmiui/maml/data/Variables$ArrayType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/Variables$ArrayType;->OBJECT:Lmiui/maml/data/Variables$ArrayType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/maml/data/Variables$ArrayType;->$VALUES:[Lmiui/maml/data/Variables$ArrayType;

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
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/Variables$ArrayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lmiui/maml/data/Variables$ArrayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$ArrayType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/Variables$ArrayType;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lmiui/maml/data/Variables$ArrayType;->$VALUES:[Lmiui/maml/data/Variables$ArrayType;

    invoke-virtual {v0}, [Lmiui/maml/data/Variables$ArrayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/Variables$ArrayType;

    return-object v0
.end method
