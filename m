Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A91D10E4E6
	for <lists+tipc-discussion@lfdr.de>; Mon,  2 Dec 2019 04:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ey9mAOYRPkvyGKC2s1VoImFdk82mdU/g41ckmR0Fqwc=; b=MpmPN1TnVepFyrhtXl5UluQNR
	zD2QSbstu0WK5RTSJc5PUXzg4uIbT/e3khWmYxiaZPD95yaTotrlahBMmVmqvbH7o57O/seweSTbd
	8AiY25xOIR42dK20x5gwlS2iSeKJ5M4m4zgnarUksLXln2l9imtvCmsHJmcAs/zTEpNrw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ibcbp-0007ov-KA; Mon, 02 Dec 2019 03:42:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1ibcbn-0007on-I1
 for tipc-discussion@lists.sourceforge.net; Mon, 02 Dec 2019 03:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vEEvT1c3F9fdIr3NhCgN+xPMBZzQxH8OJcUzO7ES2Nc=; b=LSg8+splYb5T5/be2r6Z4Q55b8
 YDvVpLDwPs77EqpM83Z3QqtmSHgWSPcA1iJm+uzh8xdpsuC0MgmcA3Il7WNbAyQBrs7QgHLyjdNjI
 Ey6GbGU5FnbCgaBf/eK4Xf7KY79dDj+vEq1IPVhfO5CNE2AiLThqIdkGjBTLn23+oQEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vEEvT1c3F9fdIr3NhCgN+xPMBZzQxH8OJcUzO7ES2Nc=; b=PqhHBs1XBhQbQ5WGwRI5iPFi88
 V7maaATqeukuUDnOMR6EKm90KHiOHeSU3pdjGA7CkMDJvxemjiGif+YkkxE70VpotgTi6g/mEAaU3
 zB1KxRIGX0cqe0q9varFV+oUNOn6VioTsRvMOnmOZqweguBryaTJ/8Pn8o3lvibn9uRI=;
Received: from mail-eopbgr720089.outbound.protection.outlook.com
 ([40.107.72.89] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ibcbf-002BrP-H9
 for tipc-discussion@lists.sourceforge.net; Mon, 02 Dec 2019 03:42:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fz8cgwNbcF1+j4n88hO2GFTeWChSh4r4iq/tOYnot88QBgNTdvdPeqfpI0oazW16rF7PeyLCim+MxoWhNjxN24wuUMk9DXjT9lTOReABFVRfEJp9sscLTjW0gQ+c5JRsdkKoYOZPO3GBUPUhkW9uFSMzeraA70gxJH9dive5Makn5ZICawlJrVA3QQ+pANJV3WqAxRdqkRcJ1ej6XaxLLCs3GiqOixxpGSVaGl/ZmvOCF6btINC2mmb8GAlJkegbA7uI/6lfvkm5+8tfR3NEF9BwW1PTpT+gW84rB4js82t2++7l5y2wzOGIFwr9C9pDEyWIJgB0CUSX6Y2Lf7rLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vEEvT1c3F9fdIr3NhCgN+xPMBZzQxH8OJcUzO7ES2Nc=;
 b=gWoDEXH0Gp/B347nPl4NWKz385YjGuoNLrOeYdOVg/p50lfpittirR5x4mJzjw86TvXnlQexPDVLMHW0mEvUn9sQWTcJn2p70IvrVkY5lBDnvEjhpPSDXGA0Rgi63f1NqbxGs+2MFDzDW9ShWQr8snhpRJl5fdqR6UX+F9E1Dpl7ilgMzuylhyLYhpnL8N2wL+4SougeBco17eQ4cHjnJs2cWmeo/55ifFiMonn1yl3mNPkDGmyultZ0fnZQZauqOzX5sIz/WdtLyTDRW8joCsVSXBQqcVfcMDUykq7oheQmDE+Imuaprlv/bBEYpoJuEqdRY4zyEfHti6nujxjdgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vEEvT1c3F9fdIr3NhCgN+xPMBZzQxH8OJcUzO7ES2Nc=;
 b=hCB79wdH2ykcK04lP/rAFr0WZMA4jCX7DqJJ/1UbEa0deYI0hlOw2n+9iWRf63T+BtNd1t7GZ3a0+5ns0QYgHnYFN9+P1a0t1DLW23ro9h9IE4IM+SASh+US0PyCmODfeYd4umz4Fw2oGthCAIaI71QGq45wKgtZ5DqVa8If2kg=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3558.namprd15.prod.outlook.com (52.132.228.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.17; Mon, 2 Dec 2019 03:26:55 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c7b:65ae:ad5e:50d0]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c7b:65ae:ad5e:50d0%5]) with mapi id 15.20.2495.014; Mon, 2 Dec 2019
 03:26:55 +0000
To: Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next 0/3] tipc: introdice variable window congestion control
Thread-Index: AQHVqKf/vVXBc4Y570ath/saC47MfKemLmzA
Date: Mon, 2 Dec 2019 03:26:54 +0000
Message-ID: <CH2PR15MB3575AF74E5057DE66F96A2219A430@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1575246751-23238-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1575246751-23238-1-git-send-email-jon.maloy@ericsson.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e49ab27-be67-4dd2-5085-08d776d77b08
x-ms-traffictypediagnostic: CH2PR15MB3558:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB3558EA21DF8B8E06343989AB9A430@CH2PR15MB3558.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(346002)(366004)(376002)(136003)(13464003)(199004)(189003)(71200400001)(478600001)(7736002)(6436002)(74316002)(99286004)(76176011)(6506007)(33656002)(305945005)(26005)(102836004)(53546011)(64756008)(66556008)(66476007)(66946007)(66446008)(76116006)(9686003)(52536014)(25786009)(54906003)(316002)(5660300002)(256004)(44832011)(3846002)(11346002)(6916009)(229853002)(7696005)(186003)(55016002)(6246003)(71190400001)(446003)(81166006)(81156014)(8676002)(8936002)(66066001)(6116002)(4326008)(14454004)(86362001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3558;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pql/e0AQfjgBLUW7TUw4rBHTMTghplzW7t+4u46ObCu7GPoDLGxDwE+zK7Dhg8EKN0bbhXql+82aw1DVmQRWUmxzjBiBbKVBf1vHV8vVnPbBTw46CdCZa92yE1oGPo9/qz1p3wX4oYvyZFW83Iw31wRJInib6jaqr7JeXaaUprj3tJ/ETvksIUa+CSD9hAtTiYxSs7ulyDWkIv5YfsvgxJg/MI/7l9oUUD85H5m05YjGmbkryj7+HSgkihcpm/Ll6UIDqt3DSTtkKsQSGynQqH+9KUh/Jf35kH5IAn0R2jqzBOYgYLu5F5gzMfswCfm76q8KCOvNJjo+vy4z4kWtr1iyvuujEE68+pf0WD9VWxboRfo2dlswmwLMZIgSWwDivYcwdlApveTfI/4HU4hCf30HSZYpF/uhq2wRUqSwtYSEgUjyLjCoC4KygbJgopGU
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e49ab27-be67-4dd2-5085-08d776d77b08
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2019 03:26:54.8064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hZc1bbpB9nzbFnG/AtkT5jPTS/3x43PiZqmGgKLvlVyT3EDnU6uhKVn6i66O6iiXB1Dka2X4XrLdMDkefDEp3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3558
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ibcbf-002BrP-H9
Subject: Re: [tipc-discussion] [net-next 0/3] tipc: introdice variable
 window congestion control
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Just so there is no misunderstanding: this is a completely new version of the variable congestion window algorithm, comprising both slow start, congestion avoidance and fast recovery.
I maybe should have added a v5 is similar to it...
Performance is consistently better than in the previous versions.

///jon


> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: 1-Dec-19 19:32
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang
> Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan
> Mihaljevic <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next 0/3] tipc: introdice variable window congestion control
> 
> We improve thoughput greatly by introducing a variety of the Reno
> congestion control algorithm at the link level.
> 
> This algorithm is similar to one Xin developed last summer, but is
> re-adapted to the latest changes at the link level and leverages the
> special features of the TIPC link protocol, such as the explicit
> nacks sent when a packet loss is detected.
> 
> Jon Maloy (3):
>   tipc: eliminate gap indicator from ACK messages
>   tipc: eliminate more unnecessary nacks and retransmissions
>   tipc: introduce variable window congestion control
> 
>  net/tipc/bcast.c     |  11 +--
>  net/tipc/bearer.c    |  11 +--
>  net/tipc/bearer.h    |   6 +-
>  net/tipc/eth_media.c |   3 +-
>  net/tipc/ib_media.c  |   5 +-
>  net/tipc/link.c      | 191 ++++++++++++++++++++++++++++++++++++---------------
>  net/tipc/link.h      |   9 +--
>  net/tipc/node.c      |  16 +++--
>  net/tipc/udp_media.c |   3 +-
>  9 files changed, 172 insertions(+), 83 deletions(-)
> 
> --
> 2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
