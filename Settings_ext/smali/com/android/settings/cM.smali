.class Lcom/android/settings/cM;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# instance fields
.field final synthetic mE:Lcom/android/settings/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/cM;->mE:Lcom/android/settings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HomeSettings;Lcom/android/settings/cH;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/cM;-><init>(Lcom/android/settings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/settings/cM;->mE:Lcom/android/settings/HomeSettings;

    invoke-static {v0}, Lcom/android/settings/HomeSettings;->a(Lcom/android/settings/HomeSettings;)V

    .line 77
    invoke-static {p1}, Lcom/android/settings/search/e;->bn(Landroid/content/Context;)Lcom/android/settings/search/e;

    move-result-object v0

    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/search/e;->b(Ljava/lang/String;ZZ)V

    .line 79
    return-void
.end method
