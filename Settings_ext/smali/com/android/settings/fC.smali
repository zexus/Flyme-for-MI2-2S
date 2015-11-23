.class Lcom/android/settings/fC;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic vV:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/settings/fC;->vV:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 966
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 967
    iget-object v1, p0, Lcom/android/settings/fC;->vV:Lcom/android/settings/RadioInfo;

    const-class v2, Lcom/android/settings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 968
    iget-object v1, p0, Lcom/android/settings/fC;->vV:Lcom/android/settings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 969
    const/4 v0, 0x1

    return v0
.end method
