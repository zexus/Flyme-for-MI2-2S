.class Lmiui/telephony/SubscriptionManagerEx$Holder;
.super Ljava/lang/Object;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final CONTEXT:Landroid/content/Context;

.field static final INSTANCE:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    .line 85
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/SubscriptionManagerEx;-><init>(Lmiui/telephony/SubscriptionManagerEx$1;)V

    sput-object v0, Lmiui/telephony/SubscriptionManagerEx$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManagerEx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
