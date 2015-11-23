.class Lcom/android/settings/fe;
.super Ljava/lang/Object;
.source "OldmanModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic tE:Z

.field final synthetic tF:Lcom/android/settings/fd;


# direct methods
.method constructor <init>(Lcom/android/settings/fd;Z)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/fe;->tF:Lcom/android/settings/fd;

    iput-boolean p2, p0, Lcom/android/settings/fe;->tE:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/fe;->tF:Lcom/android/settings/fd;

    iget-object v0, v0, Lcom/android/settings/fd;->tD:Lcom/android/settings/OldmanModeSettings;

    invoke-static {v0}, Lcom/android/settings/OldmanModeSettings;->a(Lcom/android/settings/OldmanModeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/fe;->tE:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/fe;->tF:Lcom/android/settings/fd;

    iget-object v0, v0, Lcom/android/settings/fd;->tD:Lcom/android/settings/OldmanModeSettings;

    iget-boolean v1, p0, Lcom/android/settings/fe;->tE:Z

    invoke-static {v0, v1}, Lcom/android/settings/fc;->f(Landroid/content/Context;Z)V

    .line 51
    return-void
.end method
