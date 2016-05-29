.class public Lcom/android/settings_ext/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAkaAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapMethods:[Ljava/lang/String;

.field private mEapSimAvailableSimName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ext/wifi/AccessPoint;Z)V
    .locals 22
    .param p1, "parent"    # Lcom/android/settings_ext/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings_ext/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v18, "unspecified"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 160
    sget-object v18, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 161
    sget-object v18, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 162
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 163
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 177
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    .line 178
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settings_ext/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 180
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 181
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 182
    if-nez p3, :cond_3

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 184
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mEdit:Z

    .line 186
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 189
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getSimInfo()Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    .line 191
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    .line 192
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    .line 193
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 195
    const v18, 0x7f0b0018

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 196
    const v18, 0x7f0b0020

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 197
    new-instance v18, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x1090008

    const v21, 0x7f0b0021

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 202
    new-instance v18, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x1090008

    const v21, 0x7f0b0022

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v18, v0

    const v19, 0x1090009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090277

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f021a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0213

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f090243

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f01fb

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f01fc

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0202

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0208

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 225
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0400e1

    const v20, 0x1020014

    const v21, 0x7f0b0012

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 228
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 233
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showIpConfigFields()V

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showProxyFields()V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f022a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f022b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f09029a

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 351
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 353
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f09029c

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 357
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 360
    :cond_2
    return-void

    .line 182
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    goto/16 :goto_0

    .line 230
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f00ef

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 242
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f01fa

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 246
    .local v8, "group":Landroid/view/ViewGroup;
    const/4 v13, 0x0

    .line 247
    .local v13, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 249
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v18

    sget-object v19, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 251
    const/4 v13, 0x1

    .line 253
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v16

    .line 254
    .local v16, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 255
    const v18, 0x7f09026b

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 273
    .end local v16    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_6
    :goto_4
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v18

    sget-object v19, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 275
    const/4 v13, 0x1

    .line 284
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->isActive()Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 286
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showSecurityFields()V

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showIpConfigFields()V

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showProxyFields()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f022a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f022b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 292
    if-eqz v13, :cond_a

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f022b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f022c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f09029a

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 259
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    .line 261
    .local v17, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v17, :cond_6

    .line 262
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v10

    .line 263
    .local v10, "ipAddr":I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v11, "ipBuf":Ljava/lang/StringBuffer;
    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v0, v10, 0xff

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 268
    const v18, 0x7f09026b

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 276
    .end local v10    # "ipAddr":I
    .end local v11    # "ipBuf":Ljava/lang/StringBuffer;
    .end local v17    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_c
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v18

    sget-object v19, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 278
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 280
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 301
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    .line 302
    .local v15, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "signalLevel":Ljava/lang/String;
    if-nez v15, :cond_10

    if-eqz v14, :cond_10

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f090296

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 344
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->isActive()Z

    move-result v18

    if-eqz v18, :cond_0

    :cond_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    if-nez v18, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f090298

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 307
    :cond_10
    if-eqz v15, :cond_11

    .line 308
    const v19, 0x7f090268

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/android/settings_ext/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 313
    :cond_11
    if-eqz v14, :cond_12

    .line 314
    const v18, 0x7f090267

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v14}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 317
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ext/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 318
    .local v9, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 319
    const v18, 0x7f090269

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Mbps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 323
    :cond_13
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 324
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    .line 325
    .local v7, "frequency":I
    const/4 v5, 0x0

    .line 327
    .local v5, "band":Ljava/lang/String;
    const/16 v18, 0x960

    move/from16 v0, v18

    if-lt v7, v0, :cond_16

    const/16 v18, 0x9c4

    move/from16 v0, v18

    if-ge v7, v0, :cond_16

    .line 329
    const v18, 0x7f090214

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    :goto_8
    if-eqz v5, :cond_14

    .line 337
    const v18, 0x7f09026a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 341
    .end local v5    # "band":Ljava/lang/String;
    .end local v7    # "frequency":I
    :cond_14
    const v18, 0x7f090266

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ext/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v8, v1, v2}, Lcom/android/settings_ext/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0219

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 308
    .end local v9    # "info":Landroid/net/wifi/WifiInfo;
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 330
    .restart local v5    # "band":Ljava/lang/String;
    .restart local v7    # "frequency":I
    .restart local v9    # "info":Landroid/net/wifi/WifiInfo;
    :cond_16
    const/16 v18, 0x1324

    move/from16 v0, v18

    if-lt v7, v0, :cond_17

    const/16 v18, 0x170c

    move/from16 v0, v18

    if-ge v7, v0, :cond_17

    .line 332
    const v18, 0x7f090215

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 334
    :cond_17
    const-string v18, "WifiConfigController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected frequency "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 355
    .end local v5    # "band":Ljava/lang/String;
    .end local v7    # "frequency":I
    .end local v8    # "group":Landroid/view/ViewGroup;
    .end local v9    # "info":Landroid/net/wifi/WifiInfo;
    .end local v13    # "showAdvancedFields":Z
    .end local v14    # "signalLevel":Ljava/lang/String;
    .end local v15    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f090209

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400dc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0f002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 365
    const v1, 0x7f0f0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method private checkEapSimInfo()V
    .locals 6

    .prologue
    .line 767
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mNumOfSims:I

    if-ge v1, v3, :cond_3

    .line 768
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 770
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "displayname":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 774
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_2G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v0    # "displayname":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Sub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 776
    .restart local v0    # "displayname":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mWifiEapSimInfo:Landroid/net/wifi/WifiEapSimInfo;

    iget-object v3, v3, Landroid/net/wifi/WifiEapSimInfo;->mSimTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 777
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is SIM_3G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 781
    :cond_2
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 784
    .end local v0    # "displayname":Ljava/lang/String;
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 587
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-object v1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 588
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 372
    .local v0, "level":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 537
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    if-ne v9, v11, :cond_0

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 541
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v12, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v12, :cond_1

    .line 542
    new-instance v9, Landroid/net/StaticIpConfiguration;

    invoke-direct {v9}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 543
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v9}, Lcom/android/settings_ext/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v5

    .line 544
    .local v5, "result":I
    if-eqz v5, :cond_1

    move v9, v10

    .line 582
    .end local v5    # "result":I
    :goto_1
    return v9

    .line 537
    :cond_0
    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 549
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 550
    .local v6, "selectedPosition":I
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 551
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 552
    if-ne v6, v11, :cond_4

    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 553
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 554
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "host":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "exclusionList":Ljava/lang/String;
    const/4 v3, 0x0

    .line 558
    .local v3, "port":I
    const/4 v5, 0x0

    .line 560
    .restart local v5    # "result":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 561
    invoke-static {v2, v4, v1}, Lcom/android/settings_ext/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 565
    :goto_2
    if-nez v5, :cond_3

    .line 566
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v2, v3, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_2
    :goto_3
    move v9, v11

    .line 582
    goto :goto_1

    .line 562
    .restart local v1    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "portStr":Ljava/lang/String;
    .restart local v5    # "result":I
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v5, 0x7f0900bd

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v9, v10

    .line 568
    goto :goto_1

    .line 570
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "portStr":Ljava/lang/String;
    .end local v5    # "result":I
    :cond_4
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 571
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 572
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 573
    .local v8, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    .line 574
    goto :goto_1

    .line 576
    :cond_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 577
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_6

    move v9, v10

    .line 578
    goto :goto_1

    .line 580
    :cond_6
    new-instance v9, Landroid/net/ProxyInfo;

    invoke-direct {v9, v7}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1040
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1042
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1044
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1052
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1054
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1055
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1056
    return-void

    .line 1046
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1047
    .local v1, "array":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1048
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 911
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 924
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0229

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 927
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 906
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1059
    if-eqz p2, :cond_0

    .line 1061
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1062
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1063
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1069
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1062
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSimCardInvisible()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 916
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1034
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 11
    .param p1, "eapMethod"    # I

    .prologue
    const v10, 0x1090009

    const v9, 0x1090008

    const/16 v8, 0x8

    const v7, 0x7f0f022a

    const/4 v6, 0x0

    .line 809
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0221

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 810
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0227

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 811
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0225

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 816
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0207

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 817
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0229

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 820
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 892
    :goto_0
    return-void

    .line 822
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 823
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 824
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 825
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 826
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 829
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0226

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 830
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 831
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 832
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 833
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 837
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_0

    .line 838
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 839
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 841
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0224

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0228

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 843
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 844
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_0

    .line 848
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v3, v4, :cond_1

    .line 849
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 850
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 852
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0224

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 853
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0228

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 854
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 855
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setSimCardInvisible()V

    goto/16 :goto_0

    .line 858
    :pswitch_4
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 862
    .local v2, "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 864
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 865
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0222

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 867
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 868
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 869
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 870
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 871
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 872
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 875
    .end local v2    # "eapSimAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v3, v9, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 879
    .local v1, "eapAkaAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 881
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 882
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0222

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 884
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 885
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 886
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 887
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 888
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 889
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f0f021b

    const/4 v5, 0x0

    .line 930
    const/4 v0, 0x0

    .line 932
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0219

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 935
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 938
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 939
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 941
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f021c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 942
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 943
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f021d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 944
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 945
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f021e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 947
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 948
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f021f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 949
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 950
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0220

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 951
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 953
    :cond_1
    if-eqz v0, :cond_5

    .line 954
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    .line 955
    .local v2, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_5

    .line 956
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_2

    .line 957
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    :cond_2
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    .line 964
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :cond_3
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 968
    .local v1, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 969
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 972
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    .end local v1    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_5
    :goto_0
    return-void

    .line 977
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 10

    .prologue
    const v9, 0x7f0f022d

    const v8, 0x7f0f0215

    const v7, 0x7f0f0214

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 982
    const/4 v0, 0x0

    .line 984
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0211

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 986
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 987
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 990
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 991
    invoke-direct {p0, v7, v6}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 992
    invoke-direct {p0, v8, v6}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 993
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 994
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 995
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0216

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 996
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 997
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0217

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 998
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 999
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f0218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1000
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1002
    :cond_1
    if-eqz v0, :cond_2

    .line 1003
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1004
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_2
    :goto_0
    return-void

    .line 1010
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1011
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 1012
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 1013
    invoke-direct {p0, v9, v6}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 1015
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v3, :cond_4

    .line 1016
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0f022e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1017
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1019
    :cond_4
    if-eqz v0, :cond_2

    .line 1020
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1021
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v1, :cond_2

    .line 1022
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1026
    .end local v1    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_5
    invoke-direct {p0, v7, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 1027
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    .line 1028
    invoke-direct {p0, v9, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setVisibility(II)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 12

    .prologue
    const v11, 0x7f0f020a

    const v10, 0x7f0f0205

    const/16 v7, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 662
    iget-boolean v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v4, :cond_0

    .line 664
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v6, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 764
    :goto_0
    return-void

    .line 669
    :cond_0
    iget v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v4, :cond_1

    .line 670
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 676
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f01e8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 677
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 678
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f01fe

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 681
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_2

    .line 682
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v5, 0x7f090276

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 686
    :cond_2
    iget v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 687
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v4, :cond_8

    .line 693
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 694
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->checkEapSimInfo()V

    .line 695
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v2, "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 697
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapSimAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 698
    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAkaAvailableSimName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 701
    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    .line 705
    .end local v2    # "methodarray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethods:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    .line 708
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 710
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f020b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 711
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 712
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 713
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f020c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 714
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0223

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 715
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f020d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 716
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f020e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 717
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f020f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 718
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0f0210

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 720
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v5, "CACERT_"

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 721
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v5, "USRPKEY_"

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 724
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-eq v4, v9, :cond_7

    .line 725
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ext/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 726
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 727
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    .line 728
    .local v3, "phase2Method":I
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 729
    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 730
    packed-switch v0, :pswitch_data_0

    .line 748
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 751
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 752
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 753
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 732
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    .line 743
    :pswitch_1
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid phase 2 method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 734
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 737
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 740
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 758
    .end local v0    # "eapMethod":I
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v3    # "phase2Method":I
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 759
    invoke-direct {p0, v8}, Lcom/android/settings_ext/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 762
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ext/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 732
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 594
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 658
    :goto_0
    return v10

    .line 596
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0902ad

    goto :goto_0

    .line 599
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings_ext/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 600
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 601
    const v10, 0x7f0902ad

    goto :goto_0

    .line 604
    :cond_2
    const/4 v9, -0x1

    .line 606
    .local v9, "networkPrefixLength":I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 607
    if-ltz v9, :cond_3

    const/16 v10, 0x20

    if-le v9, v10, :cond_4

    .line 608
    :cond_3
    const v10, 0x7f0902b0

    goto :goto_0

    .line 610
    :cond_4
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 621
    :try_start_1
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 622
    .local v8, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 623
    .local v0, "addr":[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 624
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    .end local v0    # "addr":[B
    .end local v8    # "netPart":Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "dns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 639
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 641
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0902b2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 651
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-direct {p0, v1}, Lcom/android/settings_ext/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 653
    if-nez v2, :cond_9

    .line 654
    const v10, 0x7f0902af

    goto/16 :goto_0

    .line 611
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 613
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0902b8

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 629
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings_ext/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 630
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    if-nez v5, :cond_6

    .line 631
    const v10, 0x7f0902ae

    goto/16 :goto_0

    .line 633
    :cond_6
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_2

    .line 643
    .end local v5    # "gatewayAddr":Ljava/net/InetAddress;
    .restart local v1    # "dns":Ljava/lang/String;
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings_ext/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v2

    .line 644
    if-nez v2, :cond_8

    .line 645
    const v10, 0x7f0902af

    goto/16 :goto_0

    .line 647
    :cond_8
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 656
    :cond_9
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 626
    .end local v1    # "dns":Ljava/lang/String;
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v10

    goto :goto_2

    .line 625
    :catch_2
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/WifiConfigController$1;-><init>(Lcom/android/settings_ext/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1082
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1087
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 384
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 385
    .local v2, "submit":Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 408
    :goto_0
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 388
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .line 390
    .local v1, "passwordInvalid":Z
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 393
    :cond_2
    const/4 v1, 0x1

    .line 396
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 399
    :cond_6
    const/4 v0, 0x0

    .line 407
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :cond_7
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 402
    const/4 v0, 0x1

    goto :goto_1

    .line 404
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, -0x1

    const/4 v10, 0x1

    const/16 v12, 0x22

    const/4 v11, 0x0

    .line 411
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-eq v9, v13, :cond_0

    iget-boolean v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEdit:Z

    if-nez v9, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 533
    :goto_0
    return-object v2

    .line 415
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 417
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    if-nez v9, :cond_1

    .line 418
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ext/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 421
    iput-boolean v10, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 429
    :goto_1
    iget v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v9, :pswitch_data_0

    .line 526
    const/4 v2, 0x0

    goto :goto_0

    .line 422
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-ne v9, v13, :cond_2

    .line 423
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings_ext/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 426
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 431
    :pswitch_0
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 529
    :cond_3
    :goto_2
    new-instance v9, Landroid/net/IpConfiguration;

    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v11, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v12, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v13, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 436
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v11}, Ljava/util/BitSet;->set(I)V

    .line 437
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 438
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 439
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 440
    .local v4, "length":I
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "password":Ljava/lang/String;
    const/16 v9, 0xa

    if-eq v4, v9, :cond_4

    const/16 v9, 0x1a

    if-eq v4, v9, :cond_4

    const/16 v9, 0x3a

    if-ne v4, v9, :cond_5

    :cond_4
    const-string v9, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 444
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v9, v11

    goto :goto_2

    .line 446
    :cond_5
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    goto :goto_2

    .line 452
    .end local v4    # "length":I
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 453
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 454
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 455
    .restart local v5    # "password":Ljava/lang/String;
    const-string v9, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 456
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 458
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 464
    .end local v5    # "password":Ljava/lang/String;
    :pswitch_3
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 465
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v14}, Ljava/util/BitSet;->set(I)V

    .line 466
    new-instance v9, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v9}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 467
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 468
    .local v3, "eapMethod":I
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 469
    .local v6, "phase2Method":I
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 470
    packed-switch v3, :pswitch_data_1

    .line 501
    :pswitch_4
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 504
    :goto_3
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    .local v0, "caCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v0, ""

    .line 506
    :cond_7
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 507
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 508
    .local v1, "clientCert":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v1, ""

    .line 509
    :cond_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 510
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 511
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 514
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 517
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 518
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 475
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    :pswitch_5
    packed-switch v6, :pswitch_data_2

    .line 486
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown phase2 method"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 477
    :pswitch_6
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 480
    :pswitch_7
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 483
    :pswitch_8
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 492
    :pswitch_9
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 493
    .local v7, "selectedSimCardName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 495
    .local v8, "selectedSimCardNumber":I
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selectedSimCardNumber is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 497
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 522
    .end local v7    # "selectedSimCardName":Ljava/lang/String;
    .end local v8    # "selectedSimCardNumber":I
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_9
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 475
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings_ext/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings_ext/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 377
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v3, 0x7f0f022c

    .line 1096
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0f01fe

    if-ne v1, v2, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1098
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1102
    if-ltz v0, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1112
    .end local v0    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 1098
    .restart local v0    # "pos":I
    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    .line 1105
    .end local v0    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0f022b

    if-ne v1, v2, :cond_0

    .line 1106
    if-eqz p2, :cond_3

    .line 1107
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1109
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1117
    iput p3, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1118
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showSecurityFields()V

    .line 1126
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1127
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1120
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1122
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1124
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1092
    return-void
.end method
