.class Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ael:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

.field final synthetic aem:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->ael:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->aem:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->ael:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->aef:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ManagedServiceSettings;->c(Lcom/android/settings/notification/ManagedServiceSettings;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->aem:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->ael:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->aef:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ManagedServiceSettings;->d(Lcom/android/settings/notification/ManagedServiceSettings;)V

    .line 120
    return-void
.end method
