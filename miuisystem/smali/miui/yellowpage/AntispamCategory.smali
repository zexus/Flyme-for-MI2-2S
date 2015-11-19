.class public Lmiui/yellowpage/AntispamCategory;
.super Ljava/lang/Object;
.source "AntispamCategory.java"


# instance fields
.field private mCustomName:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mId:I

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNames:Ljava/lang/String;

.field private mOrder:I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "names"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "order"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    .line 19
    iput-object p2, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    .line 20
    iput p3, p0, Lmiui/yellowpage/AntispamCategory;->mType:I

    .line 21
    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->isUserCustom()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 22
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    iput-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mCustomName:Ljava/lang/String;

    .line 35
    :cond_0
    iput-object p4, p0, Lmiui/yellowpage/AntispamCategory;->mIcon:Ljava/lang/String;

    .line 36
    iput p5, p0, Lmiui/yellowpage/AntispamCategory;->mOrder:I

    .line 37
    return-void

    .line 24
    :cond_1
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 25
    .local v7, "namesArray":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 26
    .local v6, "nameEntry":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "nameArray":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v2, v5, v8

    .line 28
    .local v2, "language":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v4, v5, v8

    .line 29
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    if-nez v8, :cond_2

    .line 30
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    .line 32
    :cond_2
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "names"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "order"    # I

    .prologue
    .line 40
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getCategoryAllNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->isUserCustom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mCustomName:Ljava/lang/String;

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    iget-object v1, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public getCategoryType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mType:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mOrder:I

    return v0
.end method

.method public isUserCustom()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
