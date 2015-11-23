.class Lcom/android/settings/em;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic rf:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/settings/em;->rf:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 557
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/em;->rf:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->a(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;I)V

    .line 560
    :cond_0
    return-void
.end method
