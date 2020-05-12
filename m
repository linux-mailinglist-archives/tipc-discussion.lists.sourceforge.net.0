Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BF51CEA4B
	for <lists+tipc-discussion@lfdr.de>; Tue, 12 May 2020 03:53:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jYK6S-0007Ug-Ef; Tue, 12 May 2020 01:53:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jYK6R-0007UZ-0G
 for tipc-discussion@lists.sourceforge.net; Tue, 12 May 2020 01:53:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JhDuXMzNuTBxqwHeh1W991ntoMELlfVuh4ceFTs80vQ=; b=EkO5nR9G7zpcyXBsjCMFI77DAg
 U0Xew3M+8jYzID6na7QPUN4wXHmMqeoW56CO+0NpRmBewOV4cn+W71b+oPIi1Y6ufhNi7sq5vh3tI
 XYLG+ZF6DV3j60kl+THYZwiZLgKTwiOW5yu/2II2NuyhMFQg4eucTdZRXNKuZa5VnHKI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JhDuXMzNuTBxqwHeh1W991ntoMELlfVuh4ceFTs80vQ=; b=ON16mjZ1XiNNGsfpgykuf5eT9I
 QTGbkLi3TQ1EdGCPfuGR27Mern46RuNsTU81FWdyE1RqPHhJnxkZychePgP6JojZFskU/bSvRBQ/E
 ntmDy3Pw97pbOgiztynO8Y0MKir6dbS50nB+7AI+BAg7kH3O6Ad9gleHDsvOOJlmp8Do=;
Received: from mail-eopbgr20125.outbound.protection.outlook.com
 ([40.107.2.125] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYK6M-00ABFv-VN
 for tipc-discussion@lists.sourceforge.net; Tue, 12 May 2020 01:53:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQEuEIiWEh9Tek+poKYXeBBeDsGFIJs64QFZw6p7n6OL3dINOiPcWxc2OdHqVJwGE5tZaS7MOzjPadaTGP/A7954xLbX3yI+TpRWRR6il2GGliiVJh960M53Ndz5n93x1wMTcdh+d8XTCcrCAuQ+nj/WZyJpHeUEPIFATtdI68fijo+7z1gxMgcT2rm6e9Pvdb9M07jqvVCuek7H2RRBFq/vRKpo+YXB3wuiDGOpbg/YkVbE1HFT26KG+KsnZtuxJwnOYHLslIep4DK7yfpNzDdxTRNvJfTT4goX7ndGu777Ty9B3uGYHofTzXdr5DEmPKFMrq7ZiT94khQBXmZCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JhDuXMzNuTBxqwHeh1W991ntoMELlfVuh4ceFTs80vQ=;
 b=OwJV9S3+1QUCHIx89J0vQn6GgtpgBAgvglON4tr97UFx+SmZcvTgHE0WdooeKwVh3WRIQa0eKLqN3IzNkT3cI9f8x4YSP0v9gtdnH7HehgaD85A8DDL1PxBeTJ3fvGcXLTaiCSCPZSA76Mfmg5eBNbI6vi7x4jsQM0KQ3j2M9v8mCoxIMZRuOUawtR125xv2rAMwMpsNc0BP9EIHfYbBQj52zXJOKy9sWXrmhU8g0r2WYk1crUUezlHfxeYW5ep3MnvLM2EaNvORPraqU1/mWUPhq1N4OwZwUVvWzHFPTgums5aZT3ASzv3DA47yZ/65HqzZvezrFSKFID3fT0l8RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JhDuXMzNuTBxqwHeh1W991ntoMELlfVuh4ceFTs80vQ=;
 b=X8fhhLGm37gPuZW/fGU6+HEzpj0EljdNLPVht1KNvIJwP76toJI7vxiyro0mB0uPqJvIVIXjLp8kV8lnauMECEJoV+zAVndVYEpS6QB6nlNd9TgCR93ZDeql4S1TXmZgf0RZPHYrbfiHiAMe6wfyJcoiy9RBNBM83/m5c2DxCaY=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4005.eurprd05.prod.outlook.com (2603:10a6:209:1b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.35; Tue, 12 May
 2020 01:52:49 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 01:52:49 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: Ying Xue <ying.xue@windriver.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net 2/2] tipc: fix failed service subscription deletion
Thread-Index: AQHWJGB8UOE+1VJXH0eD8CqGeOUHBKii5d0AgADQJ0A=
Date: Tue, 12 May 2020 01:52:49 +0000
Message-ID: <AM6PR0502MB392561472FEAB1CEE8730F33E2BE0@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
 <20200507111249.8760-3-tuong.t.lien@dektech.com.au>
 <e332c06e-a87d-4c35-046d-ff6db27c583f@windriver.com>
In-Reply-To: <e332c06e-a87d-4c35-046d-ff6db27c583f@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1976b5ef-6ea5-42d8-9dc6-08d7f6172ce5
x-ms-traffictypediagnostic: AM6PR0502MB4005:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB4005D23B233A7ECA9880D045E2BE0@AM6PR0502MB4005.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BtHA4APIFMmBWwkLOqEtR5Q2hxMXcFIcjdNReCFMOtF46EUxYFEYS0NpAHuwBBJ1Ta92kfs+Xxjvnz0NJplQBWb7W2hd6QPactCWPZcjc3QovAHnBVpLBwaa3YKd0mci7SK8laIlUdUTarryVBjIMJbbi8flPuUIMqYv0ebn4RFxluCDeT47d//6lELcixgF2ACqeB734QeS7iFh3dqoLhNSW5JscapYcOSvrt0V8stB0x2eDStnr2bJ1rXOQMdsnRP4yESkdDooO1GG6wLw32w4gb822qhk/DsPMwLbamKIQ7WAe8UBfzV/pxbaFVZVaTY+cme1OA5S44fDMA5kveFHK2vLapBigdxipkH82ca+jGY4d3Fudun1Bv2rtSRKq1wVF6TJOAz1F0OSLjabKWsqSi254mA4HLqiRMoof3Yvv/rBmTifwWhR+wxsuBVbYS9L3Ve0s8FhDZdzOPg5ySzobK2EWQg4DPkn6x4ESHaTXQJWHX1cO5yyrPHX4BRzjRXQqz/SN9uwJ/IQ/SBicQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39850400004)(346002)(376002)(136003)(396003)(33430700001)(107886003)(2906002)(52536014)(316002)(71200400001)(33440700001)(66946007)(33656002)(76116006)(110136005)(5660300002)(9686003)(86362001)(7696005)(64756008)(478600001)(66446008)(53546011)(26005)(6506007)(4326008)(66556008)(186003)(8936002)(66476007)(55016002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: L7pgG2krcQ0Kf4VmWIzDm7WT/NzCMfDML2gN6Vfo/xyMVUpdPetXUkaF8poWaVOipR610TMkjPhQIblUso5IGSZG4ZB4d/9F13cpdj03IPeOkqZ7jcrQ0M4QxzO0rdzpIRJLDhiAC/BO8iLOEwA7HZHUeWYiXeWnVH5n/Gp9YFO0a4MV+Pn3oe25/A6n56J64giUWvnNT+BPHMOzldj+tEO5wZEl5agWUoZd3UMP1kOBa7/tP7qUyIY8yY/tu+XczHLKug/QC/JiKZ0bHZEgRfGq7ognUm2oYXMnFNhF+FG2J3pnxbGYWtNHlytKteEhJkuxoGHOzs4WjDSiyVAGlg/hVVMCwqpNKNrlUZPHAfLFb60ByX1gxmrLtCBsQOqCV9zB8nH2Vt7x9Ba/wI2UD6dnD9cuDghTblBGr1mmMhv4yTzFKot4IUy4br5gXPYNHLK9Q0AEKHL56GKmMew+2FgeL7sQp6ImFPwSVL9Q/h8=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 1976b5ef-6ea5-42d8-9dc6-08d7f6172ce5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 01:52:49.3251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xw4mMIWVE+/++jK8XkI07Os3qqELfwKo/3dXVaRSXRz8BOHHfNf20dG3Wnt/5UbyVoiZ5U/uNgBklUeopaPvLacXGrG/H5adKxaSyO8K6p8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4005
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.125 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jYK6M-00ABFv-VN
Subject: Re: [tipc-discussion] [net 2/2] tipc: fix failed service
 subscription deletion
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Monday, May 11, 2020 8:23 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: Re: [net 2/2] tipc: fix failed service subscription deletion

On 5/7/20 7:12 PM, Tuong Lien wrote:
> When a service subscription is expired or canceled by user, it needs to
> be deleted from the subscription list, so that new subscriptions can be
> registered (max = 65535 per net). However, there are two issues in code
> that can cause such an unused subscription to persist:
> 
> 1) The 'tipc_conn_delete_sub()' has a loop on the subscription list but
> it makes a break shortly when the 1st subscription differs from the one
> specified, so the subscription will not be deleted.
> 
> 2) In case a subscription is canceled, the code to remove the
> 'TIPC_SUB_CANCEL' flag from the subscription filter does not work if it
> is a local subscription (i.e. the little endian isn't involved). So, it
> will be no matches when looking for the subscription to delete later.
> 
> The subscription(s) will be removed eventually when the user terminates
> its topology connection but that could be a long time later. Meanwhile,
> the number of available subscriptions may be exhausted.
> 
> This commit fixes the two issues above, so as needed a subscription can
> be deleted correctly.
> 
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>  net/tipc/topsrv.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 399a89f6f1bf..44609238849e 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -237,8 +237,6 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
>  		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
>  			tipc_sub_unsubscribe(sub);
>  			atomic_dec(&tn->subscription_count);
> -		} else if (s) {
> -			break;

I am quite surprised at this issue. The issue really exists as you
describe above, but it's better to fix it as follows:

@@ -237,8 +237,8 @@ static void tipc_conn_delete_sub(struct tipc_conn
*con, struct tipc_subscr *s)
                if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
                        tipc_sub_unsubscribe(sub);
                        atomic_dec(&tn->subscription_count);
-               } else if (s) {
-                       break;
+                       if (s)
+                               break;
                }
        }

[Tuong]: Yes, this has been included in v3 of the patch along with the change for the sub write below, please see from there.

BR/Tuong

>  		}
>  	}
>  	spin_unlock_bh(&con->sub_lock);
> @@ -364,7 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
>  	struct tipc_subscription *sub;
>  
>  	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
> -		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +		if (!(s->filter & TIPC_FILTER_MASK))
> +			s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +		else
> +			s->filter &= ~TIPC_SUB_CANCEL;
>  		tipc_conn_delete_sub(con, s);
>  		return 0;
>  	}
> 

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
