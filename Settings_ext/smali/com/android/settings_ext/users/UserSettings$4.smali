.class Lcom/android/settings_ext/users/UserSettings$4;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic amU:Lcom/android/settings_ext/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/users/UserSettings;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings_ext/users/UserSettings$4;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings_ext/users/UserSettings$4;->amU:Lcom/android/settings_ext/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ext/users/UserSettings;->e(Lcom/android/settings_ext/users/UserSettings;)V

    .line 502
    return-void
.end method