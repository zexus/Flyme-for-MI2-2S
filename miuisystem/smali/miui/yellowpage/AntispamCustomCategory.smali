.class public Lmiui/yellowpage/AntispamCustomCategory;
.super Lmiui/yellowpage/AntispamCategory;
.source "AntispamCustomCategory.java"


# instance fields
.field private mIsUserCustom:Z

.field private mMarkedCount:I

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "names"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "order"    # I
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "markedCount"    # I
    .param p8, "isUserCustom"    # Z

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    .line 11
    iput-object p6, p0, Lmiui/yellowpage/AntispamCustomCategory;->mNumber:Ljava/lang/String;

    .line 12
    iput p7, p0, Lmiui/yellowpage/AntispamCustomCategory;->mMarkedCount:I

    .line 13
    iput-boolean p8, p0, Lmiui/yellowpage/AntispamCustomCategory;->mIsUserCustom:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getMarkedCount()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mMarkedCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isNumberCategoryCustom()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lmiui/yellowpage/AntispamCustomCategory;->mIsUserCustom:Z

    return v0
.end method
