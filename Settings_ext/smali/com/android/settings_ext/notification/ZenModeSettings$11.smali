.class Lcom/android/settings_ext/notification/ZenModeSettings$11;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic agC:Lcom/android/settings_ext/notification/ZenModeSettings;

.field final synthetic agE:Lcom/android/settings_ext/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings;Lcom/android/settings_ext/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$11;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    iput-object p2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$11;->agE:Lcom/android/settings_ext/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$11;->agE:Lcom/android/settings_ext/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/settings_ext/notification/ZenModeConditionSelection;->qS()V

    .line 508
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$11;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/notification/ZenModeSettings;->a(Lcom/android/settings_ext/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 509
    return-void
.end method
