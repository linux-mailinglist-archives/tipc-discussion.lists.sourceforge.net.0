Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66749DB796
	for <lists+tipc-discussion@lfdr.de>; Thu, 17 Oct 2019 21:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V+pkOXt8laJMRuXla2cjTtYuM1eYozvB3CD6SJbe/co=; b=iZzmTqxzQuWl+nPkjqbmiZ3U+
	u3pfMAeLHWs9oCtCf0v96a5Y2c0E71lb7CwLLcK5KTICRcwus2MQE+ob74OjXu4U+FVFOxvG8CnPA
	6dxLrHCmFzctQjwEjIX/i//jXdjgOGk9A2vGt7J4KyFMBT6NWlNsS+zYkizLnqZIHQxWM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLBYB-0003Fk-Fl; Thu, 17 Oct 2019 19:35:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iLBY9-0003Fc-IP
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 19:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6T7i6pu9s5GgQTskABrVqYTtSsyxbzcDMedtqcKtA5E=; b=P/qCgnAkcMIEvRSqnvTH5xIKbw
 jzlwOEvMnClcUQZ65RMPp4HxGCNY/c9u+uaQlXJJf8SWryXYCFEigWJFlJKcAE1z5Ux+ZPdUBB1uv
 1dWTG22+MDqg+q+FHC2pIgdWo/RuGm8NhtkL1iwxr3CUSwz1RoLs53srtdbvyy81Nvg8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6T7i6pu9s5GgQTskABrVqYTtSsyxbzcDMedtqcKtA5E=; b=CusLzJXtFI4OTWLZatmaMVTT/T
 bdGh2VnCWhBQ5BA3oA7f1Ch4KuADMtRVLO29sE4bE+T+LX4CAKP9QxlaW770K9nRNQDQU3HeRkBLg
 ITUEZaWo8H3SPAQiIfHkWLhYYMkbuhFrSIHbT5OgtMUnMSJOmLVwV19Wy/7ZTUy3s5MY=;
Received: from mail-eopbgr720082.outbound.protection.outlook.com
 ([40.107.72.82] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iLBXz-00CkWE-5K
 for tipc-discussion@lists.sourceforge.net; Thu, 17 Oct 2019 19:35:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c+LUnhQbCNS3W5he9ONzb/fmYstLMn4nKJ20p58E8oIC2yQb5A4NQLkTLsDquh5wUKGrS90+6pZLBLnZznb/aBcwEp/xykfXpB8708E5hekKDrT7qdc52fQcr0E7/kwmBgRXNeZBA+zYdR0NekPAnFLHw2j2hAOjXHvFkGnS6Nr4dVHKNxZvvP8hXbtVnLHiVwVU455NLEdJHW/fPFiRaRXgfw61m1rFIZow2sOzzhFAeo1AxB4+Muw5oCGcPTkEP/VEAT/0Z7zQeqxkgf+du+GUhLbz80Flvkg5I3Gwo/RmtmpbgWZB88L4QPfoESUM2AvNlw5vNcfvrn4IevryPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6T7i6pu9s5GgQTskABrVqYTtSsyxbzcDMedtqcKtA5E=;
 b=f0/nv+FLKYeUV52YOV15Fq3p4rZMigPZcDapD0PTUoa1bSKLdFZcEbbNz/O5IJDOz9SjoVh2QwzES94lT9c3dFN7xNP3H0nLjpcZGNKqrzTlJFOI2NHHfES6BO3calM26cR8SyZoeCAAG5p0k63OI26aluNYKHRjdBFGOYjmqoyObOQZuJ824DwXrDSBFYFD8ssi7acrEg0iz+IIlrae2azHXSWFkJNUuurlnxJaoAHphiWeao720qpk4VwukD5L1orr1xUy5Di65K3YgOKvKzeH+vkwaZ9C9v879SSdxIPg0U/LD65LE6GM8bq/hgwAoiROkQkVj5LdSMutqWQbzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6T7i6pu9s5GgQTskABrVqYTtSsyxbzcDMedtqcKtA5E=;
 b=kO8fpmXULP+S9PTvo0EFJF00rUK3/QNnKLfoQGE36CgXlGmjlfodqNnWACCE3sIStIfj+eTJXunvhQDjbzt0FtgrAWavCnS3dAZCGEF3y93D+fnkT/4eoNp9hmQmK3OpyDaR0g+O2WayKX6OfNX3wc2RjgP3XYmUYaAR1ecoTa4=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3701.namprd15.prod.outlook.com (52.132.230.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Thu, 17 Oct 2019 19:34:47 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11%7]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 19:34:47 +0000
To: Rune Torgersen <runet@innovsys.com>,
 "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Error allocating memeory error when sending RDM message
Thread-Index: AdWFAVU998AwK5GLQqyAOhiqFS9m+gAIEBdA
Date: Thu, 17 Oct 2019 19:34:47 +0000
Message-ID: <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
In-Reply-To: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39dd4f7e-88a4-4b70-939c-08d7533911e8
x-ms-traffictypediagnostic: CH2PR15MB3701:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR15MB370142F9F0DFF23001B66FAD9A6D0@CH2PR15MB3701.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(199004)(189003)(13464003)(74316002)(110136005)(15650500001)(14454004)(256004)(33656002)(99286004)(44832011)(66446008)(486006)(476003)(446003)(6246003)(66066001)(5660300002)(76116006)(66556008)(71190400001)(64756008)(11346002)(86362001)(6306002)(498600001)(66476007)(6436002)(71200400001)(66946007)(966005)(9686003)(55016002)(6116002)(3846002)(2906002)(52536014)(305945005)(8936002)(25786009)(7736002)(81156014)(81166006)(6506007)(53546011)(102836004)(26005)(76176011)(7696005)(186003)(229853002)(8676002)(491001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3701;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wLj3sdWJJNv1r7Cl9fUszRSAgRU0hJe+pEZQGqBoeUi7bg+c41sSzkphFdWW4pT06UOxhWT54fUAb+31DM7dvSOtkZrsPJobSVkjzgCmPPiCazr+3Spiq9IMIbPmb8jJ2EgnQegV1+O+436jDLGB+Uj8PgL+nt9vR9rRAxihpZWKn47chvXjGsv39EpLC3lAVTLCOlAIrZEWAF7hRACcloHQaTJxz5atdBKo2X0cOJQ69LIofWp8weZ9A3k60yhnLy7YEx8+7aYkpSKGCIxs70SOjCGcvtFHZQVdIXXQ0vUnmI8/EwMNZz7tkm3c0ejIbytNZg/6+xf1y7sPGSAmx94UHsBH+I8sfSK7fAhS9cwyFUC0ui6W9HKcaVisJaRGpXwdp3F6cYguMIQg7Qg+owkFarrfwYCrrzFj+YfnaUgmZE6ZUHv25Rmz7CBDLO5u+3Olhr0A/0sUhAKwzQPfgw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39dd4f7e-88a4-4b70-939c-08d7533911e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 19:34:47.3701 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gCuJt4kAB9kHXWpi4m5CpfIZRj76wdvz31CeneW920lTHhKEtZhwjo74SwStlC0y468ZebEAzYJHfPAuDDsDUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3701
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iLBXz-00CkWE-5K
Subject: Re: [tipc-discussion] Error allocating memeory error when sending
 RDM message
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Rune,

Do you see any signs of general memory leak ("free") on your node?

Anyway there can be no doubt that this happens because the big buffer pool is running empty.

We fixed that in commit 4c94cc2d3d57 ("tipc: fall back to smaller MTU if allocation of local send skb fails") which was delivered to Linux 4.16.

Do you have any opportunity to apply that patch and try it?

BR
///jon

> -----Original Message-----
> From: Rune Torgersen <runet@innovsys.com>
> Sent: 17-Oct-19 12:38
> To: 'tipc-discussion@lists.sourceforge.net' <tipc-
> discussion@lists.sourceforge.net>
> Subject: [tipc-discussion] Error allocating memeory error when sending RDM
> message
> 
> Hi.
> 
> I am running into an issue when sending SOCK_RDM or SOCK_DGRAM
> messages. On a system that has been up for a time (120+ days inthis case), I
> cannot send any RDM/DGRAM type TIPC messages that are larger than about
> 16000 bytes (16033+ fails, 15100 and smaller still works).
> Any larger messages fails with erro code 12 :"Cannot allocate memory".
> 
> Really odd thing about it  only happens on some connections and not others,
> on the same system (example, sending to tipc node 103:1003 gets no error,
> while sending to 103:3 get error).
> When it gets into this state, it seems to happen forever on the same
> destination address, and not on others until system is rebooted. (restarting the
> server side application makes no difference).
> The sends are done on the same node as the receiver is on.
> 
> Kernel is Ubuntu 16.04 LTS 4.4.0-150 in this case, also seen on 161.
> 
> Nametable for 103:
> 103        2          2          <1.1.1:2328193343>         2328193344  cluster
> 103        3          3          <1.1.2:3153441800>         3153441801  cluster
> 103        5          5          <1.1.4:269294867>          269294868   cluster
> 103        1002       1002       <1.1.1:490133365>          490133366   cluster
> 103        1003       1003       <1.1.2:2552019732>         2552019733  cluster
> 103        1005       1005       <1.1.4:625110186>          625110187   cluster
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
