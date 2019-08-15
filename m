Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2FB8EDC5
	for <lists+tipc-discussion@lfdr.de>; Thu, 15 Aug 2019 16:10:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hyGSO-00049b-K1; Thu, 15 Aug 2019 14:10:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hyGSM-00049O-Sc
 for tipc-discussion@lists.sourceforge.net; Thu, 15 Aug 2019 14:10:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sWnE+v4mbcNGkG+PyzVAOKFIzyzbqNV6lmFpF0+/JEQ=; b=M6J17aTU+A8xvHia7eD/6bUG5s
 taQ4WUzzZjhTyB3Nq5q5+1ruX6VfpwsVDyI3ZHgiqzsJlWEB1ojXIjqXgMODQsnL5HX6iTh2ApGdW
 OMy6XRUaxka5UxzNmHODE9diktIw/hPZy7x4+FxM1lDrqRxvICrgtbSj0rNYxMdIH0C8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sWnE+v4mbcNGkG+PyzVAOKFIzyzbqNV6lmFpF0+/JEQ=; b=fGjiTkpE/hCBlCpa/lTOt0EBde
 9pWU8mscROzyGpvPI16x2QUOPotD2tYTy+yqJEvCoy91WEe6ajlIcLIH/xhzJFHD1acKDukcGhrDC
 CuVJqlaZGovcQilM0gUUbiW2MubMMZYkonDiBB1VF2mn998xgV+gFPY358SGGq22TW70=;
Received: from mail-eopbgr680068.outbound.protection.outlook.com
 ([40.107.68.68] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hyGSG-004YmK-5B
 for tipc-discussion@lists.sourceforge.net; Thu, 15 Aug 2019 14:10:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gtS2mLgsxslqbLipl8yzVWE7P78Yj+zErdbM1G2mBLOAhcBcBPJ+E0VLOP1VLLju76meYIO4KD8Sk/eUoGnSJEDlHv/oMzQ/6oqghlOouoKgtcL2tA+q9Y/7nORJBQ+aiKrrIu7YpHfi7ajbOOCBSvSwrl1aTzLrH8IDeAJsorU3KKyUgPpkAc5k3g/Jwdd9Q/reaDXkkSd5KG+T3Vb6honjQtCJCAgbFjs0XpAetAatPPqK6NBnidut5MvJ+egMyleKHHu2XrcPANnQmj7unZBxeKRmUCadO+X66fPj+O2ZmwMTkIEGakVtUnCE+NZR5AUzA3bb3GVD1u0MQDg5cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWnE+v4mbcNGkG+PyzVAOKFIzyzbqNV6lmFpF0+/JEQ=;
 b=Yv9E0QlZmKjb5TLSfb0beVRtVGXybIImfNDjaAZ5UDbXoksQtcMB+erhu2H/4HsYw22QuAChqTNwyJ4wwo0Q8Jcn14Dn22Xq+dZkFcRG+qrUleifl/Ayz134acY0+lUICrI3SxYQKkP7XD81jauCuKUZudPV2erMclZRccK0CvWG4T9Uz3sMeuF816rQtJvqwwLQsHMgqpAM2rxBYCQdAv90ewvzyI8BpJpa0fmaUCbV5+xN7YzfnVCDFC0ctf/laTUw7BCRi/neBEhepgD8YTN7of0Z1PuvaUWYnuK42Bn5KXKwYbsrme852fQxkxhcG197qMse81829BJ8v1KIxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWnE+v4mbcNGkG+PyzVAOKFIzyzbqNV6lmFpF0+/JEQ=;
 b=rKtXSvkr07pOjCAgL/rKwPqkpOieO4ZWHgC+cO8udmCFJqR+46VH/SrnHOJ+eGSmYK/mSNK73N3pWzZBjsOxHUxpKxpvZxBfjTdIolMkatZ5CGVV+6E2UFOjBXlJxG0DNBnn1cLdnZ9pm8c8ecCxy1pX1F5Ib7VyAVTFID1tcfA=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3576.namprd15.prod.outlook.com (52.132.228.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Thu, 15 Aug 2019 13:54:43 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2157.022; Thu, 15 Aug 2019
 13:54:43 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Xin Long <lxin@redhat.com>
Thread-Topic: [net-next  1/1] tipc: clean up skb list lock handling on send
 path
Thread-Index: AQHVUrBeZVmxpnX+zUGeqI7V5VOxVab7t0kAgACFBOA=
Date: Thu, 15 Aug 2019 13:54:43 +0000
Message-ID: <CH2PR15MB3575D75487B422093AEDBE179AAC0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1565794548-15425-1-git-send-email-jon.maloy@ericsson.com>
 <2060574598.8620705.1565848654584.JavaMail.zimbra@redhat.com>
In-Reply-To: <2060574598.8620705.1565848654584.JavaMail.zimbra@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adb9146f-0416-46a2-cb60-08d72188203e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3576; 
x-ms-traffictypediagnostic: CH2PR15MB3576:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB35769578494D740989B6F8269AAC0@CH2PR15MB3576.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:431;
x-forefront-prvs: 01304918F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(39850400004)(136003)(396003)(13464003)(189003)(199004)(8936002)(25786009)(66066001)(86362001)(66476007)(478600001)(81156014)(52536014)(44832011)(6116002)(4326008)(3846002)(6246003)(76176011)(26005)(53546011)(6506007)(446003)(8676002)(81166006)(7696005)(476003)(53936002)(102836004)(186003)(66556008)(2906002)(486006)(7736002)(99286004)(64756008)(14444005)(6916009)(66446008)(33656002)(305945005)(11346002)(256004)(55016002)(71200400001)(54906003)(9686003)(71190400001)(229853002)(5660300002)(6436002)(76116006)(74316002)(14454004)(66946007)(4744005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3576;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Z4MCpYiv0lAE9jEbLUWPJE26WTS/6fI6ZBvczPsRvEDR6DH13wjvrGS7EEXwK3oAY91YumOuFFBAS/YlFejcmBbJOZub/xTz7i/AWvjAt4p2PQ7+anOl6lZhd24ORPEr4MS91f+ocEiKI2Q1KO6wMuLrQ2aFQrMHTA5Nw88C42PGDJrN6Vbbj+wkLI2I33XA9ZRePJgbl72H1AMT6GvKEw7A89S7K5bwMGS3ii4VnOi/CTz614UpAYVv531xrBMPh3E2nWU/ykRzokSzld7+fBzxSXSl81LLTIcZKlGq3UIiVQXjYezejgzxB7CWbECfmwxdKEO79fOogI0s1POtdKxK7UfceY12+MnzPpNXiAUBFemWIw+11KcuYPr5CiEMtlL/95yC6TvNjlxbKyfFdQ3fGJftJMdBn8n/MU7lnR0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adb9146f-0416-46a2-cb60-08d72188203e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2019 13:54:43.4830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +GwaLCPjjWr9h6308OKq7pkQ4vtZkV3c9JTOLX9jQ2b1loEDjqL34ocAhGIi7YCI4UCoIpZNi1xZHilIjCmowA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3576
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.68 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hyGSG-004YmK-5B
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: clean up skb list lock
 handling on send path
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
 "edumazet@google.com" <edumazet@google.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Xin Long
> Sent: 15-Aug-19 01:58
> To: Jon Maloy <jon.maloy@ericsson.com>
> Cc: davem@davemloft.net; netdev@vger.kernel.org; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; shuali@redhat.com; ying xue
> <ying.xue@windriver.com>; edumazet@google.com; tipc-
> discussion@lists.sourceforge.net
> Subject: Re: [net-next 1/1] tipc: clean up skb list lock handling on send path
> 
> 

[...]

> >  	/* Try again later if socket is busy */
> > --
> > 2.1.4
> >
> >
> Patch looks good, can you also check those tmp tx queues in:
> 
>   tipc_group_cong()
>   tipc_group_join()
>   tipc_link_create_dummy_tnl_msg()
>   tipc_link_tnl_prepare()
> 
> which are using skb_queue_head_init() to init?
> 
> Thanks.

You are right. I missed those. I'll post a v2 of this patch.
///jon

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
