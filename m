Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE014EB8BE
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Mar 2022 05:24:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nZOwa-00061h-An; Wed, 30 Mar 2022 03:24:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nZOwY-00061a-8t
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Mar 2022 03:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m7hKwyzSojajIf2/h0WZA/0jP+z8cQTxAsIWc6UnXxY=; b=dbCx++G3x7cbAyiYBBhcp/tch1
 Q+yhR2huCI+WXMxOdihG2xrf7LkxEIs7xHG350gA9NBbB+QTKcObYtSGwRcY9zKZRj8lkjj00oNKT
 Iat5t0YbMnJLKndr0JcyrxsP/2kefoEcRqM8yKvqflsn1JXwFL7cCKUJ3oggMPsIVQKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m7hKwyzSojajIf2/h0WZA/0jP+z8cQTxAsIWc6UnXxY=; b=SpMfOF2YZp82+ZGX0UjE6uYnPv
 Ly0G2KSNuEvs8dV1o8pvUJ6oT6uZjhtl5J6NGkeCGcwHl2RlXOje1PaC4pilxWfCfonCnHEt+zzXu
 G+BHj26ds+auyI6ySOSNxzE+G52LnFs1jtVU28/WE+Gjf+Q5NKuPMlUCeNilh5LEYpSQ=;
Received: from mail-eopbgr60136.outbound.protection.outlook.com
 ([40.107.6.136] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZOwR-00GeEP-H4
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Mar 2022 03:24:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KI0e+4rGIALuRFowiAmHif2KroY5Lgdq9paueWu1W/BrMaHWvE33CBEJ/E8gnuy9NKk54Ghe5sqo1/3JfVYFTRmINSTndvVf7wAgzpf5vXrWvRm6fv8yQyofZlc2gIihX7eZUYXNiLWvu7hNtEUO8nXybpcS06UsXRgemYcUCIqHdLnb6HtFMiNMyb/inLh3w3hC0lfaG2goztL60RYWfiLzKcptEESCuhz8K5rYV26T+1a37pIFJ6FAc3dl5LwmJ9fcKpSwzDvTnTuYKH8kEjosbtdq6EyxgoxX/HLubtK+zGDlNGUOmrFB37IrI3475O9ZQ4Cv1fDyfsgI6HzxWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7hKwyzSojajIf2/h0WZA/0jP+z8cQTxAsIWc6UnXxY=;
 b=bDPrKKZoxCG4G1huHvm3fKvwd2SuEEoKXp5vUoQmw0Vd9CEuSuHMuMq72PjISmMtrYK1AeiIhF4CtSxNHitSrREz+WD85BT+8OpkRgEjx+/W9F0c/E4Z80im8pF1hp+7DnjI5Asb7PEh0LV0nHlOjeW+QenWINYmuh1KOWKV4QEUThJVcnujalPexG9aPCBNw81iL8fu0x/cBqztuoeMoqH55VA1EGQYwgEHpjWsZj8r5SvWhJPkRlcAGxayzexrOpjHWhnDnslb8PpnTYWMrijWBnu89HuF8hQp4dAwA/AfJtGlawyn6ASknNhOxUyl4ode0ZOIWJy5ZwKUcrk5Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m7hKwyzSojajIf2/h0WZA/0jP+z8cQTxAsIWc6UnXxY=;
 b=P+PyWM6iujzQncKVVb9Q/ttw7yRwydjATadKOeYMpUHyvPZkjTHIvhRFvdkGsbBMr+2EPfut0AqTev4wAbXPlPkg+qSdSXtHRPz9oIT+WjDxy+Pcn5exI2YqR0QJj0TybRykOuBatl7TMEJxu1ax+GnZ9ABeOELubherOYyTJ7M=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by DB9PR05MB7628.eurprd05.prod.outlook.com (2603:10a6:10:1f8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.23; Wed, 30 Mar
 2022 03:09:12 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::bcc8:8940:3227:bdf8]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::bcc8:8940:3227:bdf8%3]) with mapi id 15.20.5102.023; Wed, 30 Mar 2022
 03:09:11 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Niels Dossche <dossche.niels@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH net] tipc: use a write lock for keepalive_intv instead of
 a read lock
Thread-Index: AQHYQ4fhRhbcK/rId0mP2kHpRX0IyqzXPSug
Date: Wed, 30 Mar 2022 03:09:11 +0000
Message-ID: <VE1PR05MB7327B86C1D232BE0B31CA248F11F9@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <20220329161213.93576-1-dossche.niels@gmail.com>
In-Reply-To: <20220329161213.93576-1-dossche.niels@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c4398e9-ec93-4493-3d51-08da11faaa1c
x-ms-traffictypediagnostic: DB9PR05MB7628:EE_
x-microsoft-antispam-prvs: <DB9PR05MB762808997A144AF6D861E68BF11F9@DB9PR05MB7628.eurprd05.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GE7qnRGL1pXIn34O9QMLChKkXKJQGubPFskbCDW9acVkSqXJtmtfIY5K/2MYqkowM4QQQ/5DixQYILNsOHhjLE22uGhv5R+29WHrxKZaswQflJOw3MdeHwdlguq+rHElV7jE2+5279DLsp50j9RoFiZXSTBW4qPfYsHgQ0C73Jp46F1Fc1gJ8M0HSojLlrI0TaOPzkCJzEvyeOikzDEVbT7UvybarBTYTQxODaTNMGTbcvpL/OI5YgB1zOEWf7gXmgmuXXgr5fQYPTuh/dbFcKZTTA926H/HNk35JRp3EIvBbkgMjz3NF/yGtoUeDiiCxYwXGpQB05l5bzPgUcv4xnJg5K/zDK9bZj2Yn8IxXhSZF3OTVPWKtkmv55m9ZlmtdGxoCOwDDoSUfFscYD7qrLu+oPok4olOclMF74OrzkDpDHj/XSt1lk8L7NAjibkkX2ZFtiQs8szePEk511dAYC519P0Q3f4qokLsdR2mJLHSUf8iBzv8BUPU3O+5V+be1GI7DbsiRybaiy7Wge6Bj2Qj29VLn+Dr1cu/lkMBf68mSGTGseDpY/SzyIQS2CtbVwYf08n524K7TU+SVRe2LCFlDVjBB1vs5cjMOZzWhrOVpCpDlzVka1cshCpcyHU5GKXjYunKBYj+3CseKQolCeTzDOgDyqAL4OLO/vmp7QzPPRFJrFHg3r3OoVxUTekyMk2nVKiEMudcCIctHGexsQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(396003)(39840400004)(376002)(346002)(136003)(366004)(38070700005)(55236004)(38100700002)(83380400001)(71200400001)(122000001)(53546011)(186003)(26005)(508600001)(6506007)(7696005)(9686003)(66946007)(110136005)(52536014)(55016003)(8676002)(4326008)(64756008)(76116006)(316002)(66446008)(66556008)(66476007)(2906002)(5660300002)(54906003)(86362001)(8936002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1Yobt33By3BBchtRsL8GO7V74xLwwI7yHKNfidcFdEYu668HgFN/sTHx0IhS?=
 =?us-ascii?Q?aOiSZ0DZx4JAu/cFXyeoFZ1HsT4Qz5wPqlwt/fO0yTTLmii1wxAKQ/D6Nm2p?=
 =?us-ascii?Q?m5RxNPDRSyWOqS/DGA9TvYkkLXZIv7RlEi2HZ+AgIUEYW4sfHTJCjxkDIfkK?=
 =?us-ascii?Q?uEd1QGxS71K3WQXykla9U/WJVkKoYBlKLrCj3Ug4c/pGdbiWxBbc+nbC+IkO?=
 =?us-ascii?Q?+RE913cr1h/64IRHU0D2JI0v04wZvu1th3zmjauD1ZY7S5x0azBSDqiMBitj?=
 =?us-ascii?Q?AGJIm1DCNRfof+vcQY7yjygr/NQchZjhVrA9QJY7bGOMUqJJDLsc4TEEKfsa?=
 =?us-ascii?Q?k+835yEbKMyKUVop6T2zQs/3rF8+Wb8wyLKDtKcJT+hfmzO7AJgw/Sx7icn2?=
 =?us-ascii?Q?UccmS8ejvZTecoorrxXYk97ASLAnw9Wsr9MGNe/6Re8WzdGUt5aBncmJwvAk?=
 =?us-ascii?Q?Dl3T3s9YBOuePMVUjIp9Bsr4m20UfXKx48LTAcNurubw3nLwQhZ+KZp5VARH?=
 =?us-ascii?Q?HOMMONpjj2kPjdC6iwi4SyUEDGCD5qVSXRBnayyOENio1ZGPgatwm9guTXb5?=
 =?us-ascii?Q?ZHF5I7zX/OeVQ7Q2A1RiYO6sHs9KUeIjcFrCqxWmE751/I1R2nmieEImzG3Z?=
 =?us-ascii?Q?sh0TvleLZYc01c+vwOEfuSspIPAtrCp8gKAYu7pyYEet5qY61lanmED/ipXl?=
 =?us-ascii?Q?FYg+UPgVsG11K9x3Y4PUlGDMajspkYTWdb4PnEpM3sXWI6c37sWwOPfbQddA?=
 =?us-ascii?Q?Sxba/sAQbd/4ZlH4CdeQfr4vaWfTSq3WEVYD3LuYBGAHcm20YtSqVL3oL7Oh?=
 =?us-ascii?Q?FDRT2iwSSCtbzxoh0Rr97YpMXyRzD98DchNX8hEo1SQORFaAam0fAcsGHPgL?=
 =?us-ascii?Q?H6onlBruTZ/arJsyFs/oIzB6hqOgr/LHJ8xyQmNLuTvaOyX0e6Lk5DfJmCRd?=
 =?us-ascii?Q?Ih8szMygYnxM2oEkFjE9OcK08rZ4et+1CM4nVtvD456z1FrSR+vjBDSwSFbI?=
 =?us-ascii?Q?+8SuA2qiNZDf6l3rLTpH8ExtTIdCb1rBSznAMUm4fgoVwouIzSvD55BNHoUF?=
 =?us-ascii?Q?gDLqZv9bJ26CbKJSUERkPg2AYoUmC0D/hJ262+HjVYuw8HRVD19YwXZVWQlo?=
 =?us-ascii?Q?2e/xdiPGvarDC33d8B6JOb/edxYgfmn0l8FxgyOKr79BBafR5xNT7rcXu9kd?=
 =?us-ascii?Q?XUTd7i4DnKgG/7YJnCV2JplkaGg4497CJ4UiV1dHha58Vn/a/s7Zq3em4ZFa?=
 =?us-ascii?Q?rZOw+wj7cnGFTk9HjXfa1VnPoT6PJOge+asnLa1mD8NeSP/t/g1/pMiIRDL+?=
 =?us-ascii?Q?CuYpkVPZYAA0lJgBL5t31eHLQD7eukbcjgrH9l2En91NG3nGlDPLrfd8yOWF?=
 =?us-ascii?Q?kYKgF8UBPyBIAmDGz2TCiucJIVNBWLdVFtK0kdcOlDpo+ZnR8sz9zuYEdrXh?=
 =?us-ascii?Q?AUk7IojR1nu/Tns1VJ4YXgu8f7fa24TZ+/3OduSDdXskzqerImKsc3hou7Jo?=
 =?us-ascii?Q?p8J7Cf+CP7TcIfamck+4f73Qi4WJimAj47P7e1E7gkLme+YVf27nUjNlNQNJ?=
 =?us-ascii?Q?BUswR+zkneZwueN+elH7GhJue6n6KmxxZ4IL0dK1115p8LwPOBd34t6NEJrA?=
 =?us-ascii?Q?83ACKeWrkUoqGjtRpjuxlaJ5kIOVZDVI9+OCEoWHNTGtKaDFMPyhd90LDC+/?=
 =?us-ascii?Q?0S2CJ49vrBNjn7xwJgh052BwFpMy+TlV5idwCx3+WWSbNN22aUpvgGN2KHWN?=
 =?us-ascii?Q?9ezMtlrEW9OMJVBtDVRn0dDlcHDxW7U=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4398e9-ec93-4493-3d51-08da11faaa1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 03:09:11.9038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y25eFJTgSESVwDsRkq2NBcci5JD9gLCZiUpfJGw8CFO2p0GbigMZ3TA+gVtuROH033c+NN1gzZnXpeM5IMaxqsEVKF97jci/lwIqZ9E5yZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR05MB7628
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Niels, I did consider this function however I guess it
 is safe to use tipc_node_read_lock()/unlock() since this value is being apply
 in this callback function. BTW, you must be using tipc_node_write_unlock_fast()
 instead of tipc_node_write_unlock(). Regards, Hoang > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.136 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nZOwR-00GeEP-H4
Subject: Re: [tipc-discussion] [PATCH net] tipc: use a write lock for
 keepalive_intv instead of a read lock
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Niels,

I did consider this function however I guess it is safe to use  tipc_node_read_lock()/unlock() since this value is being apply in this callback function. 

BTW, you must be using tipc_node_write_unlock_fast() instead of tipc_node_write_unlock().
Regards,
Hoang
> -----Original Message-----
> From: Niels Dossche <dossche.niels@gmail.com>
> Sent: Tuesday, March 29, 2022 11:12 PM
> To: tipc-discussion@lists.sourceforge.net
> Cc: netdev@vger.kernel.org; Jon Maloy <jmaloy@redhat.com>; Ying Xue <ying.xue@windriver.com>; David S. Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Niels Dossche <dossche.niels@gmail.com>
> Subject: [PATCH net] tipc: use a write lock for keepalive_intv instead of a read lock
> 
> Currently, n->keepalive_intv is written to while n is locked by a read
> lock instead of a write lock. This seems to me to break the atomicity
> against other readers.
> Change this to a write lock instead to solve the issue.
> 
> Note:
> I am currently working on a static analyser to detect missing locks
> using type-based static analysis as my master's thesis
> in order to obtain my master's degree.
> If you would like to have more details, please let me know.
> This was a reported case. I manually verified the report by looking
> at the code, so that I do not send wrong information or patches.
> After concluding that this seems to be a true positive, I created
> this patch. I have both compile-tested this patch and runtime-tested
> this patch on x86_64. The effect on a running system could be a
> potential race condition in exceptional cases.
> This issue was found on Linux v5.17.
> 
> Fixes: f5d6c3e5a359 ("tipc: fix node keep alive interval calculation")
> Signed-off-by: Niels Dossche <dossche.niels@gmail.com>
> ---
>  net/tipc/node.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 6ef95ce565bd..da867ddb93f5 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -806,9 +806,9 @@ static void tipc_node_timeout(struct timer_list *t)
>  	/* Initial node interval to value larger (10 seconds), then it will be
>  	 * recalculated with link lowest tolerance
>  	 */
> -	tipc_node_read_lock(n);
> +	tipc_node_write_lock(n);
>  	n->keepalive_intv = 10000;
> -	tipc_node_read_unlock(n);
> +	tipc_node_write_unlock(n);
>  	for (bearer_id = 0; remains && (bearer_id < MAX_BEARERS); bearer_id++) {
>  		tipc_node_read_lock(n);
>  		le = &n->links[bearer_id];
> --
> 2.35.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
