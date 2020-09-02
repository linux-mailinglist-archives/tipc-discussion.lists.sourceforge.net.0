Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF8525A573
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Sep 2020 08:17:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kDM4u-0003j8-4B; Wed, 02 Sep 2020 06:17:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1kDM4q-0003in-Ee
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Sep 2020 06:17:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k4r/aycaofDryifPVOT/RrTZizaA3z5XPwgFNTWmAJU=; b=bns2SIxucPaHLS+A0C/BJg/CaG
 V5+Rg5OyPQTCffqP1C5oexA2YRNQ1ZNGZyhsyGLNsn4Mt+BsfmIOxvhcbC8Do5SJruqOCY9xRlRl2
 y9ooFm01hU+mPZgtSQ+GqKQj6JLlARbAVCrsGP/hvMtN+eaShqnOOzPCFdzKqb3JNY4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k4r/aycaofDryifPVOT/RrTZizaA3z5XPwgFNTWmAJU=; b=FJqh2CtUIqdDlhaDaI2SNMfa4Z
 AIv9jUcccdjjXQ/L6y4HWGEIA+wkXCJaLxZekLtuLmBO9FddZjuPySLsBqYpl5jQpyMNpPL01A00J
 Q1q+46vf5z6EJkbp1+T7kg49Fx3vw5msCr3/iPfqRVv1ec/1yHNRqjxGSWGJxS1/7pE4=;
Received: from mail-eopbgr130093.outbound.protection.outlook.com
 ([40.107.13.93] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDM4j-009m1n-Jm
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Sep 2020 06:17:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eY6rFyfnKsJwxYayYhZlj0HbMIc+QxySQIZNz6yObRaz0Mqma7Cv2WkS7x92g062TTIC3zicYxCFs/9Sj1JtGQ/cLY9+nBQN005ASaLNnELw938Ain2qIFpU6jnU+2AuKXP60H2o119wvTQmSNTa64kZDFFphArQZlg7GzGhB2EYAuumiE09lkRyc3MwNZs+/C0X+dVCzf0DZ2Vh9+f1QcKthektcE9xRB5xrUV1Cau2iAOth9qsfrZP93fBbtbkHVjxy/za3lTfJYGflRyQC3TeVNXoQ9gfFrPJwuf2dCmjKVWxohlKsJTO1hV+fuOlMf7Yq2uoMLEqXkajkrHt9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4r/aycaofDryifPVOT/RrTZizaA3z5XPwgFNTWmAJU=;
 b=GchIYHIXZxZvyV0vFA7r2CgGD0GtDfz5dN6syYTt2b3tEat7kRHRv/IwG0Mtk3zb6zJu4TFJF/8+9c5jMga0h10z7oVE2u4TY3kIuFYkMoWrCalSi2iVCXYOpIBmebDUpFHr79jD3Op2f6btIcg91gKhi6p+lQHb3WW3Ji86IahA6badsp8prtnsDfrXC/C1KAL2/NL8iDogr6AcApx0+C6Xiz9lyIz6hds7WOyv+GGg5nu/5WglrVQIyakrOT2l4P0biS7r/RxjkSrt1/3aZckaqKBgWuzXQ9mKjKEArKkc2qBgy5pd8CE8T+L1kcbT9w5YLbnlZ+sVg6Vj6IW6bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4r/aycaofDryifPVOT/RrTZizaA3z5XPwgFNTWmAJU=;
 b=D5noxq2ySN+w7YNWuPQCRBO+bTzptArpvraptA5pqCNDPtUgk3TUQ7KoCoWYspsE3BXxVdLsS6OEe7jVr29gwUqy8FexbwMtaeHJ4ElJ/aVS61qZcTcWbP+m8lpDNlet11OHsKdBBMRby+a7Bx0M0akXOJtVtLbUfCuzO2pohz8=
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com (2603:10a6:20b:1db::9)
 by AM4PR0501MB2292.eurprd05.prod.outlook.com (2603:10a6:200:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.22; Wed, 2 Sep
 2020 06:16:44 +0000
Received: from AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902]) by AM8PR05MB7332.eurprd05.prod.outlook.com
 ([fe80::64de:d33d:e82:b902%7]) with mapi id 15.20.3348.015; Wed, 2 Sep 2020
 06:16:44 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: David Miller <davem@davemloft.net>
Thread-Topic: [net-next v2 1/4] tipc: optimize key switching time and logic
Thread-Index: AQHWgFljycnWru2qvU2zDy6vbXHU46lUWLMAgAB+fLA=
Date: Wed, 2 Sep 2020 06:16:44 +0000
Message-ID: <AM8PR05MB7332A71A7237D3BB3AB29A25E22F0@AM8PR05MB7332.eurprd05.prod.outlook.com>
References: <20200831083817.3611-1-tuong.t.lien@dektech.com.au>
 <20200831083817.3611-2-tuong.t.lien@dektech.com.au>
 <20200901.151028.670408362469941141.davem@davemloft.net>
In-Reply-To: <20200901.151028.670408362469941141.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none
 header.from=dektech.com.au;
x-originating-ip: [123.20.195.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56505f6f-8889-4a79-482b-08d84f07c407
x-ms-traffictypediagnostic: AM4PR0501MB2292:
x-microsoft-antispam-prvs: <AM4PR0501MB229285E36863449F17ACE2DEE22F0@AM4PR0501MB2292.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3HTgVaJdGEXamvTeg8+y9ESlNB39EmJGKBhcA8Ga9+vbPly7afjfOyQ6pyNScPbOO2OgduNFMUvL4vPvjSBxW/VMO6VNmswG0fYSllIbqHorvw04DzbV8zGiCIJGoW16363qiZqZdIciStVTMBmpcylnpNzjxsd7Z3H6x8jzrwehThIOeGM+Ac0iSUxnNX+CMJB8wnabtzEeNg2mk0Tl3uxMDevR8sWBseIAzZe0QFozxwL2FEDgY41c4cwGAu0Waqu2qJiYLOr+xwD5A0C7GqTWLqym32JH6jdYMBqkbYovn1BLUhTi4VB+O5SdQaHsiKYqEUQY7MxZBTWIesNG/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7332.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(39850400004)(376002)(136003)(55236004)(2906002)(186003)(7696005)(4326008)(316002)(8676002)(9686003)(33656002)(54906003)(6916009)(8936002)(53546011)(83380400001)(66556008)(76116006)(5660300002)(55016002)(6506007)(66946007)(52536014)(26005)(71200400001)(478600001)(66476007)(66446008)(64756008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +ZoUWG4bpXoyTfMlmggULYyKghBnpzHMM5hkwLmJGegLo1s8Jc2P9PQ5D1aLZ+bRh7bh6zFDklzpWZewZ4iXObtI7iuSuWYR+kwrGBJVC1icl3EWZWH0WonV6L7AIf2o6OToe4s3AHfoHQmV4s6X8V08q87ACOz5u77pHz1C1dF9qc/HDWtMXrYv5uZOa/NylhY1YFM1xo/DiVDx7Jdpglduy8CDUesV2dqQX0OsqDFphIjbYuM7ExH9U4y834zxPWvd62Y7MgPktO4yDhjwGhD9KJMTnBW4wnnpuI93+SurtEys0cYRcs9UIjY8s9mKtPPNGl7UniOJqIDo8fDT/t4Y2WB55d+yabupF8lkOVS+RkwU9Hxbc4taO0iGONYxOzouk6gNzI2oRqu4Fbp/GPTmWPAyLcD8pL8tuoFeWugK9CyY+ZAp5zODjppqgbjbdIMBlFNFLRr5Xo/SvvH6WF76spuLqfIeA9V+Yg+oWM6JTYch95CpLkN6bzo3qcwRUzLS9pSUj6kwpcKLkufVdHDx+GRf5POY9D5gokq98qAF8OsPzJ4/9FRUK76zTPcNTy1RovNx5pwHtFGDtU3asLEUOXnWOxJOhK7ziI/2EAmaZjq2xGa56G/cAdls2J1f0Tdv/Wfd6OXVHoPGl6GPQQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7332.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56505f6f-8889-4a79-482b-08d84f07c407
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2020 06:16:44.4201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +loD/KBD5Qzg4KmLCziapS71DM9hy3IgYPQb8H5bV6nixnYcKH1H7UiQLbHLRMAY2cMeH2oyFcjtsaVeBIyTigqRDAgHPFzt1VNnuBTR/g0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2292
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.93 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1kDM4j-009m1n-Jm
Subject: Re: [tipc-discussion] [net-next v2 1/4] tipc: optimize key
 switching time and logic
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: David Miller <davem@davemloft.net>
> Sent: Wednesday, September 2, 2020 5:10 AM
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
> Cc: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; netdev@vger.kernel.org; tipc-
> discussion@lists.sourceforge.net
> Subject: Re: [net-next v2 1/4] tipc: optimize key switching time and logic
> 
> From: Tuong Lien <tuong.t.lien@dektech.com.au>
> Date: Mon, 31 Aug 2020 15:38:14 +0700
> 
> > We reduce the lasting time for a pending TX key to be active as well as
> > for a passive RX key to be freed which generally helps speed up the key
> > switching. It is not expected to be too fast but should not be too slow
> > either. Also the key handling logic is simplified that a pending RX key
> > will be removed automatically if it is found not working after a number
> > of times; the probing for a pending TX key is now carried on a specific
> > message user ('LINK_PROTOCOL' or 'LINK_CONFIG') which is more efficient
> > than using a timer on broadcast messages, the timer is reserved for use
> > later as needed.
> >
> > The kernel logs or 'pr***()' are now made as clear as possible to user.
> > Some prints are added, removed or changed to the debug-level. The
> > 'TIPC_CRYPTO_DEBUG' definition is removed, and the 'pr_debug()' is used
> > instead which will be much helpful in runtime.
> >
> > Besides we also optimize the code in some other places as a preparation
> > for later commits.
> >
> > This commit does not change the en/decryption functionalities.
> >
> > Acked-by: Jon Maloy <jmaloy@redhat.com>
> > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> 
> Random log messages in response to user config requests are
> inappropriate especially with netlink.
> 
> Report such informational responses to errors using the
> genl_info->extack instead, as is standard practice across
> the entire kernel.
> 
> Please remove all kernel log messages that get emitted due to
> netlink operations and use extack notifications instead.
Yes, the netlink extack message is fine but the fact is that we currently do not obtain such message from the user space tool (i.e. iproute2/tipc). So, if really needed, we will have to update the tool as well... For now, I will remove all the message logs as it is fine enough with the return code.

> 
> I also disagree with the commit message stating:
> 
> 	This commit does not change the en/decryption functionalities.
> 
> You are changing timer lengths and other aspects of crypto behavior,
> so the patch is in fact changing things.
Ok, will remove this statement (this patch was merged from two different ones, so indeed made some changes).
Thanks for the comments!

BR/Tuong


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
