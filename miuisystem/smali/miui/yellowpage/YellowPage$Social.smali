.class public Lmiui/yellowpage/YellowPage$Social;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Social"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mProviderId:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "providerId"    # I

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lmiui/yellowpage/YellowPage$Social;->mUrl:Ljava/lang/String;

    .line 756
    iput-object p2, p0, Lmiui/yellowpage/YellowPage$Social;->mName:Ljava/lang/String;

    .line 757
    iput p3, p0, Lmiui/yellowpage/YellowPage$Social;->mProviderId:I

    .line 758
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Social;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lmiui/yellowpage/YellowPage$Social;->mProviderId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Social;->mUrl:Ljava/lang/String;

    return-object v0
.end method
