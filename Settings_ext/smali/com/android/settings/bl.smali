.class Lcom/android/settings_ext/bl;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gM:Lcom/android/settings_ext/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/android/settings_ext/bl;->gM:Lcom/android/settings_ext/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/settings_ext/bl;->gM:Lcom/android/settings_ext/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary;

    .line 2133
    if-eqz v0, :cond_0

    .line 2135
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Lcom/android/settings_ext/DataUsageSummary;Z)V

    .line 2137
    :cond_0
    return-void
.end method
