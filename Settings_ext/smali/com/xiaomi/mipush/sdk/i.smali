.class public abstract Lcom/xiaomi/mipush/sdk/i;
.super Ljava/lang/Object;
.source "MiPushClient.java"


# instance fields
.field private category:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public a(Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 912
    return-void
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 942
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method protected getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/i;->category:Ljava/lang/String;

    return-object v0
.end method

.method protected setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/i;->category:Ljava/lang/String;

    .line 904
    return-void
.end method
