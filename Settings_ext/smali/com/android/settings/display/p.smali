.class Lcom/android/settings/display/p;
.super Ljava/lang/Object;
.source "MiuiScreenSaverFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Vb:Lcom/android/settings/display/MiuiScreenSaverFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/MiuiScreenSaverFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/display/p;->Vb:Lcom/android/settings/display/MiuiScreenSaverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/display/p;->Vb:Lcom/android/settings/display/MiuiScreenSaverFragment;

    invoke-static {v0}, Lcom/android/settings/display/MiuiScreenSaverFragment;->a(Lcom/android/settings/display/MiuiScreenSaverFragment;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method
