.class Lcom/android/settings_ext/notification/ZenModeSettings$13;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic agC:Lcom/android/settings_ext/notification/ZenModeSettings;

.field final synthetic agF:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings;I)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$13;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    iput p2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$13;->agF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$13;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    iget v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$13;->agF:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/ZenModeSettings;->cf(I)V

    .line 522
    return-void
.end method
