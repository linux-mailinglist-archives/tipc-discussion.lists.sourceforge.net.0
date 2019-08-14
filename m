Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C50958D747
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Aug 2019 17:36:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxvKY-0004RE-NL; Wed, 14 Aug 2019 15:36:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hxvKX-0004R6-Vt
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 15:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HmtMFUXk4wfA7qcwFojNcrlTwMaBQr5Os46p5+ZVt2I=; b=Tk9ajYtF02hrVpSZOHm4XSrGwW
 iKDREkl9CGlAekpMshiiVyJkq7WvfndRHx8qVuS/QKlfi4QVq2FhecV52trhEzV+sIp0BlwelvEgM
 GZqd3bTE0MpjmaPduw3VyS9GlcS213Zsw6/bgnj0zVOu85+fuOFhmjXnJzITD3Mhl4n0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HmtMFUXk4wfA7qcwFojNcrlTwMaBQr5Os46p5+ZVt2I=; b=JSriOuggOxRIjRCFMIcZhwRAXw
 6pKCnEYymEIweX0oUZMh0UEP69gHXelJGyIAyXR/hUPqJFz/VMGEMS0b7A63jUPVLoS2XdVvQPHHE
 wpEl2tRRad3OhEcz7F638sdgFyZK2qu7XZ++hE561fG9renP/ysv2JxRA5zYP/jfQAmM=;
Received: from mail-eopbgr730053.outbound.protection.outlook.com
 ([40.107.73.53] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hxvKV-003ZXz-7H
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 15:36:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A23RtRXyYVDLALCO6RtWrIoBRRlAI0q2sxlke+8JpktFfZTyrOwctBx7dthskpPi1S0TkQczyIIpOhxkj09aLIJ35kerqwhfPIduLjjlc40jWgnCV5OQK7mMsXG5ZAK4OHOFHfAMDi3Qv8hE2YJz/5DdD+ZgoXgOz1XUwiTWxxaej6Jvo5u1bh4aRI2MgT6/7RKgrt1/fGI6zXrqdZogkeMIOrqDAXYPGrjAmc4cJ/Gr+Ep6ESg5qTOaWW9gh+sIUvfc5f1Iufsx7VNm1wanbPKuaIY7nxx+d7ZcvkoFE8mV9zUCvZx1qLgFaUKB3kfI1cBy3/ZvdrUsL7AD8Vyebg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HmtMFUXk4wfA7qcwFojNcrlTwMaBQr5Os46p5+ZVt2I=;
 b=IZz4cEsp49KbstjE6N3YOpEQoLMjIhPX+1ot5qZ5P+I9pqjnZ17IV3mahRMVvQchcPudtC2Sa6mp9T37WC2Y01BpsqjJVWwdMKicpe8J2/1cy7c9aeUq2G/RKbiVdTDVnDwF2+hlbjP2HPJSn2+xVszhAJAb4IJvS/ECL1nDslpglfa0TBT1HFailztiT7Ig7nuXeTtFPuzcI91Ee+wxcPqS2J4ezD+/7w5e8EwhxgeO6jEj1FWYd99MVZ24CeuMtxcrLiFhyHeAKw3k1KIL3M+65De9pWDnptSc1PXIsP8w4pifcqYmoMUOTW49dHLs7ZK1ACEwS9IXyVP5ma/QKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HmtMFUXk4wfA7qcwFojNcrlTwMaBQr5Os46p5+ZVt2I=;
 b=NtNdc+4RrBCBSxkcX2XS3MctjvvJXinvNEIhttm6bva+x9uWzxcP7fBSt/06zSsEXUQPzIw9I4o88qCnjaW87Jt1IRwHtDM54hUK8K4/0Wj08XcZSDCevaxhQJtzB3y1P4rlXOgxWxcheRBuf1n9h82ITpE8IOk3xZViUgSBBbg=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3640.namprd15.prod.outlook.com (52.132.229.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 15:03:30 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::49b5:cc04:ec33:c7c2%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 15:03:30 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Ying Xue <ying.xue@windriver.com>, Tung Quang Nguyen
 <tung.q.nguyen@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [tipc-discussion][net v1 1/3] tipc: fix potential memory leak in
 __tipc_sendmsg()
Thread-Index: AQHVUb4hz5i6SwQrTEGoSZPCZ+wquab6huuAgAA4ZcA=
Date: Wed, 14 Aug 2019 15:03:29 +0000
Message-ID: <CH2PR15MB3575B68F8D52C579188E279A9AAD0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
 <20190813100131.5987-2-tung.q.nguyen@dektech.com.au>
 <f245e98b-42dc-dd6b-bd11-4a7d7f042b1b@windriver.com>
In-Reply-To: <f245e98b-42dc-dd6b-bd11-4a7d7f042b1b@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b95ac6f3-747b-499d-f4a2-08d720c8915b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR15MB3640; 
x-ms-traffictypediagnostic: CH2PR15MB3640:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB364090DCD98D339949C61BB29AAD0@CH2PR15MB3640.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(13464003)(189003)(199004)(52536014)(476003)(6116002)(14444005)(305945005)(2201001)(256004)(53936002)(2906002)(186003)(66066001)(74316002)(446003)(7736002)(25786009)(44832011)(6246003)(3846002)(71200400001)(71190400001)(66556008)(76116006)(64756008)(66446008)(66476007)(6436002)(229853002)(478600001)(33656002)(76176011)(102836004)(5660300002)(316002)(26005)(7696005)(6506007)(86362001)(66946007)(99286004)(8676002)(53546011)(110136005)(14454004)(81166006)(8936002)(11346002)(486006)(55016002)(81156014)(9686003)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3640;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9we/lIUo5G4Ye2TSz4SDpku1JkgAijcuMn5uPpDxbWLbAKPKxljSTbAURyw4+2Qf5onicg6sS+bCYtc5MVRkWx+iA/OVRDPr81aGvqRM6Zs6yByqAu8WsonToXw/a8aPgdXfJ5yohGdHmsa6x0lqo0uHI/e+sQOC+GifosGp9tja2prh19fShNRwwNcHlW6hqxmTZxFon8DMcQQvu02V0Z8ybjQTe0a3vJSru5VdZVBHHoT483irhoeikZK2ZvycSZAHhvib/FG9gZGGTucJqDuoest7iRdek+o/x3BpfTi2uxNiAVTdtuYzxvQi9ym2fvLBn7ourrJr95vqsllxW6Yncjb4Lw9EG9u03CXla6iEJS97ZeGOYEcxUIyoIfW3aBdrnokw6mmACmfakOgIqAB4L+r+VSbA/S6rRCdrjcc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b95ac6f3-747b-499d-f4a2-08d720c8915b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 15:03:29.8976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VCEYHIh33apxU7FxnHITpAdI6zlHW2Mhcan9+DTuhtT5KUl1+M0/iUSar+fRHWdHWJ1ARWWG5f7c/ekdn7rXGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3640
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.73.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hxvKV-003ZXz-7H
Subject: Re: [tipc-discussion] [net v1 1/3] tipc: fix potential memory leak
 in __tipc_sendmsg()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon

> -----Original Message-----
> From: Ying Xue <ying.xue@windriver.com>
> Sent: 14-Aug-19 07:41
> To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; tipc-
> discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>;
> maloy@donjonn.com
> Subject: Re: [tipc-discussion][net v1 1/3] tipc: fix potential memory leak in
> __tipc_sendmsg()
> 
> On 8/13/19 6:01 PM, Tung Nguyen wrote:
> > When initiating a connection message to a server side, the connection
> > message is cloned and added to the socket write queue. However, if the
> > cloning is failed, only the socket write queue is purged. It causes
> > memory leak because the original connection message is not freed.
> >
> > This commit fixes it by purging the list of connection message when it
> > cannot be cloned.
> >
> > Fixes: 6787927475e5 ("tipc: buffer overflow handling in listener
> > socket")
> > Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> > Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> 
> Acked-by: Ying Xue <ying.xue@windriver.com>
> 
> > ---
> >  net/tipc/socket.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/tipc/socket.c b/net/tipc/socket.c index
> > 83ae41d7e554..dcb8b6082757 100644
> > --- a/net/tipc/socket.c
> > +++ b/net/tipc/socket.c
> > @@ -1392,8 +1392,10 @@ static int __tipc_sendmsg(struct socket *sock,
> struct msghdr *m, size_t dlen)
> >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> >  	if (unlikely(rc != dlen))
> >  		return rc;
> > -	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk-
> >sk_write_queue)))
> > +	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk-
> >sk_write_queue))) {
> > +		__skb_queue_purge(&pkts);
> >  		return -ENOMEM;
> > +	}
> >
> >  	trace_tipc_sk_sendmsg(sk, skb_peek(&pkts), TIPC_DUMP_SK_SNDQ, "
> ");
> >  	rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
> >

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
