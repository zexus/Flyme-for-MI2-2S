.class Lcom/android/internal/policy/impl/GlobalActions$4;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createProfileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$profileManager:Lcyanogenmod/app/ProfileManager;

.field final synthetic val$profiles:[Lcyanogenmod/app/Profile;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;[Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileManager;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->val$profiles:[Lcyanogenmod/app/Profile;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->val$profileManager:Lcyanogenmod/app/ProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 431
    if-gez p2, :cond_0

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->val$profiles:[Lcyanogenmod/app/Profile;

    aget-object v1, v1, p2

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mChosenProfile:Lcyanogenmod/app/Profile;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1002(Lcom/android/internal/policy/impl/GlobalActions;Lcyanogenmod/app/Profile;)Lcyanogenmod/app/Profile;

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->val$profileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mChosenProfile:Lcyanogenmod/app/Profile;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Lcyanogenmod/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 435
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
