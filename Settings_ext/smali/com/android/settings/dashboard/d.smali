.class Lcom/android/settings/dashboard/d;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# instance fields
.field final synthetic Rh:Lcom/android/settings/dashboard/b;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/b;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/dashboard/d;->Rh:Lcom/android/settings/dashboard/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/b;Lcom/android/settings/dashboard/c;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/d;-><init>(Lcom/android/settings/dashboard/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/dashboard/d;->Rh:Lcom/android/settings/dashboard/b;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/b;->a(Lcom/android/settings/dashboard/b;Landroid/content/Context;)V

    .line 63
    return-void
.end method
