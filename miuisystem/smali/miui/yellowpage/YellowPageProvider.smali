.class public Lmiui/yellowpage/YellowPageProvider;
.super Ljava/lang/Object;
.source "YellowPageProvider.java"


# static fields
.field public static final DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconBig:Landroid/graphics/Bitmap;

.field private mId:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    new-instance v0, Lmiui/yellowpage/YellowPageProvider;

    const/4 v1, 0x0

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2, v3, v3}, Lmiui/yellowpage/YellowPageProvider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    sput-object v0, Lmiui/yellowpage/YellowPageProvider;->DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "iconBig"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lmiui/yellowpage/YellowPageProvider;->mId:I

    .line 20
    iput-object p2, p0, Lmiui/yellowpage/YellowPageProvider;->mName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lmiui/yellowpage/YellowPageProvider;->mIcon:Landroid/graphics/Bitmap;

    .line 22
    iput-object p4, p0, Lmiui/yellowpage/YellowPageProvider;->mIconBig:Landroid/graphics/Bitmap;

    .line 23
    return-void
.end method


# virtual methods
.method public getBigIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/yellowpage/YellowPageProvider;->mIconBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/yellowpage/YellowPageProvider;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lmiui/yellowpage/YellowPageProvider;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/yellowpage/YellowPageProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isMiui()Z
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmiui/yellowpage/YellowPageProvider;->mId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
