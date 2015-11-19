.class public Lmiui/yellowpage/YellowPage$Provider;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field private mId:I

.field private mSourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage$Provider;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    :try_start_0
    const-string v3, "provider"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "id":I
    const-string v3, "sourceUrl"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lmiui/yellowpage/YellowPage$Provider;

    invoke-direct {v3}, Lmiui/yellowpage/YellowPage$Provider;-><init>()V

    invoke-virtual {v3, v1}, Lmiui/yellowpage/YellowPage$Provider;->setId(I)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/yellowpage/YellowPage$Provider;->setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage$Provider;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 93
    .end local v1    # "id":I
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lmiui/yellowpage/YellowPage$Provider;->mId:I

    return v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Provider;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)Lmiui/yellowpage/YellowPage$Provider;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 68
    iput p1, p0, Lmiui/yellowpage/YellowPage$Provider;->mId:I

    .line 69
    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage$Provider;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lmiui/yellowpage/YellowPage$Provider;->mSourceUrl:Ljava/lang/String;

    .line 78
    return-object p0
.end method
