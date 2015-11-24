.class Lcom/android/settings_ext/display/q;
.super Ljava/lang/Object;
.source "MiuiScreenSaverFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Vb:Lcom/android/settings_ext/display/MiuiScreenSaverFragment;

.field final synthetic Vc:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/MiuiScreenSaverFragment;Z)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ext/display/q;->Vb:Lcom/android/settings_ext/display/MiuiScreenSaverFragment;

    iput-boolean p2, p0, Lcom/android/settings_ext/display/q;->Vc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ext/display/q;->Vb:Lcom/android/settings_ext/display/MiuiScreenSaverFragment;

    invoke-static {v0}, Lcom/android/settings_ext/display/MiuiScreenSaverFragment;->b(Lcom/android/settings_ext/display/MiuiScreenSaverFragment;)Lcom/miui/a/a/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ext/display/q;->Vc:Z

    invoke-virtual {v0, v1}, Lcom/miui/a/a/b;->bx(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/display/q;->Vb:Lcom/android/settings_ext/display/MiuiScreenSaverFragment;

    invoke-static {v0}, Lcom/android/settings_ext/display/MiuiScreenSaverFragment;->c(Lcom/android/settings_ext/display/MiuiScreenSaverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ext/display/q;->Vc:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    return-void
.end method
