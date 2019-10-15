Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 790C6D775D
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Oct 2019 15:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KP/l1CflMzwrr/DfOfH/IOxtWtEm5YPXSuL7/CuQAwc=; b=cg94678RQ5tgNraOOjDAsXFiv
	26ksxNgblHPKI0NCAx+NtSO5CGkHJFu90FElTH+jkuK///5BbExbXnXviGaaV4Ksf5ie/2L2jTV6h
	4uHNZxvaJ1AyMh9ufXEDN163UyqBViOKuK7Ydsr3Rjw+qt2zqDpvR1wBZAlBzNNVSeDm0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKMmX-0000Ow-P0; Tue, 15 Oct 2019 13:22:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iKMmW-0000Op-Jn
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Oct 2019 13:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fGaSCtgWW50FB9njA2Z5gG9rHcvVBqd+MuGeRKhjN4M=; b=YghYa1xfAFyNA3ZIQjqpCrhwjH
 t34QjRiTA5CLF93HPkMoRI3IFiIYQk44/etuNMtuZxZVK4ZavV3aTesD/U2sQHt5aMRCTw3dKuIYr
 M7ja7ZrWklINFke0x6v1UQz53QpDlzM9RdwRBdnCbdX6kynlhRyvvn8NfMwdilLevmOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fGaSCtgWW50FB9njA2Z5gG9rHcvVBqd+MuGeRKhjN4M=; b=m5FXb/f83UPnFzgtIEZy+p6nKz
 NnaMnMsJl/fbUiHo975r/XqOkdRSZUIi1YY5WfOpxHGIABlBB3x02Y8Rp2buxrnHUoQenBBGyRQ1W
 mHRDyzspTG6qaPnZcDy4gE9YpxBQ2AZ4AENeYANbwU2TJltm2SFGH4vtgPeTQe11KI4k=;
Received: from mail-eopbgr800058.outbound.protection.outlook.com
 ([40.107.80.58] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iKMmM-00A9u6-Al
 for tipc-discussion@lists.sourceforge.net; Tue, 15 Oct 2019 13:22:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XgbczLA170LiI6UUve1ueLGH0KKSyiyMAKMflbHsCsAss6gdEpJm9v8qfzDusGe55NmMgujZsqZcFUKRAJghV0lJdQjs3X/sERIVMyLhAk5flCksqU+JiOnmwKcH+dhu21GzXamj3FdsBpU7NFQBJFGSq1YJmEURWijAFSMHBxmmlzTvfMYeO7MXcCe6A3bkpWjIApKo+BMaJzq7YMca4P4R4uX4DvYYaelC29OFkx+jJdGCyrwpAmd1RFtm5Ly6Zq7z29xST1csMGRRuVwwmo44ELAEbU9ZbVRrtYLB4W7Hav5KUkUOTgp/2hvl1uZDiNkMv83dHZyfwPXs0nKtlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fGaSCtgWW50FB9njA2Z5gG9rHcvVBqd+MuGeRKhjN4M=;
 b=O5QvH6sVG1WC2AfV3DnGdy8Xyl3O9TEcPq8hroWYXaWb9aoj1frFE5jDzKsOqEzrAMMBsgux1MQYkh2amygFEDaqRiNiV5H6XvYvfj0uraO/wIPZTBCZpQw1qEqFr3orGn6IzwyYNxdP/V8XDs5fhGSqLDVX1xXP/BQdEv7EGrtATMQCLN0z8wvzp59lIlWZKdRQNmhe1iGGCHkPnbIFsLUUp+vxt4NU4kBSQvjld7VqaAfWxy4bu8vgF05aaSKJPfjxxJx3Zg2Gxj5E526rwXLTB880OSsUqj3ugaAUIdysb5Nn4Liii8QLhRCTREy1Ysy0PjqLu1Q2Gw+M7DkKXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fGaSCtgWW50FB9njA2Z5gG9rHcvVBqd+MuGeRKhjN4M=;
 b=e6iilglmGL4tfZ/NsW4dPRQgYhZgRMbl6e+CWWcI3td+3WZrloVuRKTXgO4jfivWpZcajqDa4rBj6hRsJg4ciQqO44VluKHBYvhhnUZrTSjZG/gS3abVgvv3rgoqR5R5M+FQMoZ7VfHm1Wlou8B8gEGcm+YtVlfN/3khJuH0BuI=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3653.namprd15.prod.outlook.com (52.132.228.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 11:46:28 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11%7]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 11:46:28 +0000
To: "Xue, Ying" <Ying.Xue@windriver.com>, Xin Long <lxin@redhat.com>
Thread-Topic: [net-next] tipc: improve throughput between nodes in netns
Thread-Index: AQHVeQvCrGCKkuKA5k22MoH+b60zoadO9E4A65ZbgLSUbuX1EIABKv2ggAAkxXCABMWVQIABXBwA
Date: Tue, 15 Oct 2019 11:46:28 +0000
Message-ID: <CH2PR15MB3575216E61D2FDF239681E659A930@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191002102530.6987-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB3575521491DAC944A0F9F2629A9B0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <1276077941.5776644.1570706044772.JavaMail.zimbra@redhat.com>
 <CH2PR15MB3575E8584C61FC485FD995469A940@CH2PR15MB3575.namprd15.prod.outlook.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA3252F@ALA-MBD.corp.ad.wrs.com>
 <CH2PR15MB3575F826668EEBF44BC929679A970@CH2PR15MB3575.namprd15.prod.outlook.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA36761@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <25A14D9CFAB7B34FB9440F90AFD35233013CA36761@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [107.1.123.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c023e433-c5ac-4270-6a90-08d7516550ba
X-MS-TrafficTypeDiagnostic: CH2PR15MB3653:|CH2PR15MB3653:|CH2PR15MB3653:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR15MB3653F25F37327159AB108AB49A930@CH2PR15MB3653.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(51444003)(13464003)(189003)(199004)(5024004)(6306002)(55016002)(9686003)(71200400001)(229853002)(71190400001)(81156014)(8936002)(8676002)(81166006)(14444005)(110136005)(6436002)(316002)(6246003)(76116006)(561944003)(33656002)(256004)(74316002)(7736002)(478600001)(66946007)(4326008)(64756008)(66556008)(66446008)(66476007)(66066001)(305945005)(26005)(486006)(52536014)(3846002)(30864003)(5660300002)(476003)(25786009)(446003)(11346002)(6116002)(2906002)(99286004)(86362001)(6506007)(7696005)(53546011)(102836004)(76176011)(186003)(14454004)(966005)(44832011)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3653;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K/880oZ0/zXbCRO47PNn93IzcHTSbPTB4/3E5mFskSfSL1Kke3KnfZPo4O3XptUFAE7minkEk/TeOzFamtTN03lvyx8vSTFr0ZBRr8ScQd3hGj+bLc4fRSG8UyUT2F5mPCQIy6N1iWbK4+BUokZvbWShEuyDe43JHbz57Bn9Wx+OAej/D5ArVL+FswbCY6H02K+do3klboIruCWj0rBhBtirobf29/6D8BpObPkbbL8NmhBQb3Rq2xtOrs7qa5T9wKCl6hId5XUlhdWHM/d/dDyMEqL5IZl+Xpc89A3F/Wcp0Jj1fzgyF3gkI1ClrMhxsNNPA2oPWHW1YQcAtaYwvpyfNyWytUwzEvbRvJ5ZOGK/MeENXFY5yhTG7sXTF0ZMuaCr+m97Nb16IKPwKA5UOdEjAEJZIuApFABR9/sMIgMP9TbD39UIv/F5FgZS4mNdXdqltqd2RKmlo3fqb3voVg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c023e433-c5ac-4270-6a90-08d7516550ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 11:46:28.1916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zfo7/DmmKrmxRkQDrNffQ5rNNhLICYnuHqIyb9ifgVSCEssn8HtsRJy8bL1afvkchyZD9iAJLsifO0kxe066sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3653
X-OriginatorOrg: ericsson.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iKMmM-00A9u6-Al
Subject: Re: [tipc-discussion] [net-next] tipc: improve throughput between
 nodes in netns
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
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Xue, Ying <Ying.Xue@windriver.com>
> Sent: 14-Oct-19 11:55
> To: Jon Maloy <jon.maloy@ericsson.com>; Xin Long <lxin@redhat.com>
> Cc: tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next] tipc: improve throughput between nodes in netns
> 
> Hi Jon,
> 
> Please see my comment inline.
> 
> At netdev 0x13 in Prague last July there was presented a related proposal
> https://protect2.fireeye.com/url?k=aef37301-f27aa946-aef3339a-
> 0cc47ad93c18-
> 1e8b56dd88647abb&q=1&u=https%3A%2F%2Fnetdevconf.info%2F0x13%2
> Fsession.html%3Ftalk-AF_GRAFT.
> I was there, and I cannot say there was any overwhelming approval of this
> proposal, but neither was it rejected out of hand.
> 
> [Ying]  The idea of AF_GRAFT socket is exactly the same as this patch. If it can
> be recognized, it's definitely worth trying to submit this patch to upstream. But
> after my checking, the wired thing is that AF_GRAFT is not supported by latest
> kernel and I don't find its author ever attempted to submit its patch to
> upstream.
> 
> First, I see TIPC as an IPC, not a network protocol, and anybody using TIPC
> inside a cluster has per definition been authenticated to start a node and
> connect to the cluster. Here, there is no change from current policies.
> Once a node has been accepted in a cluster, possibly via encrypted discovery
> messages which have been passing all policies checks, and we are 100%
> certain it is legitimate and located in the same kernel (as we are trying to
> ensure in this patch), I cannot see any reason why we should not be allowed to
> short-cut the stack the way we do. Security checks have already been done.
> Are we circumventing any other policies by doing this that must not be done?
> 
> [Ying] If we treat TIPC as IPC channel, bypassing its lower level interface is
> acceptable. Beside AF_GRAFT socket, in fact AF_UNIX socket provides an
> interconnection mechanism between different processes on socket level, and
> there are several options available for us to configure policies against socket,
> such as, SO_ATTACH_FILTER, SO_ATTACH_BPF,
> SO_ATTACH_REUSEPORT_EBPF etc. If we bypass TIPC bearer, the most
> inconvenient thing is that it's hard for us to monitor traffics between netns
> with tcpdump. 

You must have forgot that since commit 6c9081a3915d ("add loopback device tracing") this is no problem any more.
Of course we do the same in this case, so a trouble shooter only needs to do tcpdump on the sender's loopback interface.

///jon

 Of course, as Xin mentioned previously, we could not use
> traditional tools to control/shape TIPC traffic across netns.
> 
> Unless you strongly object I would suggest we send this to netdev as an RFC
> and observe the reactions. If David or Eric or any of the other heavyweight say
> flatly no there is nothing we can do. But It might be worth a try.
> 
> [Ying] No, I don't strongly object this proposal. We can try to submit it to net-
> next mail list.
> 
> Thanks,
> Ying
> 
> > -----Original Message-----
> > From: Xue, Ying <Ying.Xue@windriver.com>
> > Sent: 11-Oct-19 07:58
> > To: Jon Maloy <jon.maloy@ericsson.com>; Xin Long <lxin@redhat.com>
> > Subject: RE: [net-next] tipc: improve throughput between nodes in
> > netns
> >
> > Exactly. I agree with Xin. The major purpose of namespace is mainly to
> > provide an isolated environment. But as this patch almost completely
> > bypasses security check points of networking stack, the traffics
> > between namespaces will be out of control. So I don't think this is a good
> idea.
> >
> > Thanks,
> > Ying
> >
> > -----Original Message-----
> > From: Jon Maloy [mailto:jon.maloy@ericsson.com]
> > Sent: Friday, October 11, 2019 2:14 AM
> > To: Xin Long
> > Cc: Xue, Ying
> > Subject: RE: [net-next] tipc: improve throughput between nodes in
> > netns
> >
> > Hi Xin,
> > I am not surprised by you answer. Apart from concerns about security,
> > this is the same objection I have heard from others when presenting
> > this idea, and I suspect that this would also be the reaction if we try to
> deliver this to David.
> > If we can achieve anything close to this by adding GSO to the veth
> > interface I think that would be a safer approach.
> > So, I suggest we put this one to rest for now, and I'll try to go
> > ahead with the GSO approach instead.
> >
> > Sorry Hoang for making you waste your time.
> >
> > BR
> > ///jon
> >
> > > -----Original Message-----
> > > From: Xin Long <lxin@redhat.com>
> > > Sent: 10-Oct-19 07:14
> > > To: Jon Maloy <jon.maloy@ericsson.com>
> > > Cc: Ying Xue <ying.xue@windriver.com>
> > > Subject: Re: [net-next] tipc: improve throughput between nodes in
> > > netns
> > >
> > >
> > >
> > > ----- Original Message -----
> > > > Ying and Xin,
> > > > This is the "wormhole" functionality I have been suggesting a
> > > > since while back.
> > > > Basically, we send messages directly socket to socket between name
> > > > spaces on the same host, not only between sockets within the same
> > > > name
> > > space.
> > > > As you will understand this might have a huge positive impact on
> > > > performance between e.g., docker containers or containers inside
> > > Kubernetes pods.
> > > >
> > > > Please spend some time reviewing this, as it might be a
> > > > controversial feature. It is imperative that we get security right here.
> > > >
> > > If I understand it right:
> > >
> > > With this patch, TIPC packets will skip all lower layers protocol
> > > stack, like IP (udp media), ether link layer, which means all rules
> > > of like tc, ovs, netfiler/br_netfilter will be skipped.
> > >
> > > I don't think this could be endured,  especially when it comes to a
> > > cloud environment where many rules are configured on those virtual
> > > NICs. Unless we have some special needs,  I'm not sure if this
> > > performance improvement is worth a big protocol stack skip.
> > >
> > > Thanks.
> > >
> > > > BR
> > > > ///jon
> > > >
> > > >
> > > > -----Original Message-----
> > > > From: Hoang Le <hoang.h.le@dektech.com.au>
> > > > Sent: 2-Oct-19 06:26
> > > > To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> > > > tipc-discussion@lists.sourceforge.net
> > > > Subject: [net-next] tipc: improve throughput between nodes in
> > > > netns
> > > >
> > > > Introduce traffic cross namespaces transmission as local node.
> > > > By this way, throughput between nodes in namespace as fast as local.
> > > >
> > > > Testcase:
> > > > $ip netns exec 1 benchmark_client -c 100 $ip netns exec 2
> > > > benchmark_server
> > > >
> > > > Before:
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> > > > |  |
> > > > |  [octets]  | Conns |    Conn   |  [ms]
> > > > |  +------------------------------------------------+
> > > > |            |       |           |           | Total [Msg/s] | Total [Mb/s] |
> > > > |            |       |           |           | Per Conn [Mb/s] |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |        64  |  100  |    64000  |    13005  |       492103  |         251  |
> > > > |        2  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |       256  |  100  |    32000  |     4964  |       644627  |        1320  |
> > > > |       13  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |      1024  |  100  |    16000  |     4524  |       353612  |        2896  |
> > > > |      28  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |      4096  |  100  |     8000  |     3675  |       217644  |        7131  |
> > > > |      71  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |     16384  |  100  |     4000  |     7914  |        50540  |        6624  |
> > > > |     66  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |     65536  |  100  |     2000  |    13000  |        15384  |        8065  |
> > > > |     80  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > >
> > > > After:
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |  Msg Size  | #     |  # Msgs/  |  Elapsed  |                    Throughput
> > > > |  |
> > > > |  [octets]  | Conns |    Conn   |  [ms]
> > > > |  +------------------------------------------------+
> > > > |            |       |           |           | Total [Msg/s] | Total [Mb/s] |
> > > > |            |       |           |           | Per Conn [Mb/s] |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |        64  |  100  |    64000  |     7842  |       816090  |         417  |
> > > > |        4  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |       256  |  100  |    32000  |     3593  |       890469  |        1823  |
> > > > |       18  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |      1024  |  100  |    16000  |     1835  |       871828  |        7142  |
> > > > |      71  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |      4096  |  100  |     8000  |     1134  |       704904  |       23098  |
> > > > |      230  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |     16384  |  100  |     4000  |      878  |       455295  |       59676  |
> > > > |     596  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > > |     65536  |  100  |     2000  |     1007  |       198487  |      104064  |
> > > > |     1040  |
> > > > +-----------------------------------------------------------------
> > > > +----------------------------
> > +
> > > >
> > > > Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> > > > ---
> > > >  net/tipc/discover.c   |  6 ++-
> > > >  net/tipc/msg.h        | 10 +++++
> > > >  net/tipc/name_distr.c |  2 +-
> > > >  net/tipc/node.c       | 94
> > > +++++++++++++++++++++++++++++++++++++++++--
> > > >  net/tipc/node.h       |  4 +-
> > > >  net/tipc/socket.c     |  6 +--
> > > >  6 files changed, 111 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/net/tipc/discover.c b/net/tipc/discover.c index
> > > > c138d68e8a69..98d4eea97eb7 100644
> > > > --- a/net/tipc/discover.c
> > > > +++ b/net/tipc/discover.c
> > > > @@ -38,6 +38,8 @@
> > > >  #include "node.h"
> > > >  #include "discover.h"
> > > >
> > > > +#include <net/netns/hash.h>
> > > > +
> > > >  /* min delay during bearer start up */
> > > >  #define TIPC_DISC_INIT	msecs_to_jiffies(125)
> > > >  /* max delay if bearer has no links */ @@ -94,6 +96,7 @@ static
> > > > void tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
> > > >  	msg_set_dest_domain(hdr, dest_domain);
> > > >  	msg_set_bc_netid(hdr, tn->net_id);
> > > >  	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
> > > > +	msg_set_peer_net_hash(hdr, net_hash_mix(net));
> > > >  	msg_set_node_id(hdr, tipc_own_id(net));  }
> > > >
> > > > @@ -200,6 +203,7 @@ void tipc_disc_rcv(struct net *net, struct
> > > > sk_buff
> > > *skb,
> > > >  	u8 peer_id[NODE_ID_LEN] = {0,};
> > > >  	u32 dst = msg_dest_domain(hdr);
> > > >  	u32 net_id = msg_bc_netid(hdr);
> > > > +	u32 pnet_hash = msg_peer_net_hash(hdr);
> > > >  	struct tipc_media_addr maddr;
> > > >  	u32 src = msg_prevnode(hdr);
> > > >  	u32 mtyp = msg_type(hdr);
> > > > @@ -242,7 +246,7 @@ void tipc_disc_rcv(struct net *net, struct
> > > > sk_buff
> > > *skb,
> > > >  	if (!tipc_in_scope(legacy, b->domain, src))
> > > >  		return;
> > > >  	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
> > > > -			     &maddr, &respond, &dupl_addr);
> > > > +			     pnet_hash, &maddr, &respond, &dupl_addr);
> > > >  	if (dupl_addr)
> > > >  		disc_dupl_alert(b, src, &maddr);
> > > >  	if (!respond)
> > > > diff --git a/net/tipc/msg.h b/net/tipc/msg.h index
> > > > 0daa6f04ca81..a8d0f28094f2
> > > > 100644
> > > > --- a/net/tipc/msg.h
> > > > +++ b/net/tipc/msg.h
> > > > @@ -973,6 +973,16 @@ static inline void
> > > > msg_set_grp_remitted(struct tipc_msg *m, u16 n)
> > > >  	msg_set_bits(m, 9, 16, 0xffff, n);  }
> > > >
> > > > +static inline void msg_set_peer_net_hash(struct tipc_msg *m, u32 n) {
> > > > +	msg_set_word(m, 9, n);
> > > > +}
> > > > +
> > > > +static inline u32 msg_peer_net_hash(struct tipc_msg *m) {
> > > > +	return msg_word(m, 9);
> > > > +}
> > > > +
> > > >  /* Word 10
> > > >   */
> > > >  static inline u16 msg_grp_evt(struct tipc_msg *m) diff --git
> > > > a/net/tipc/name_distr.c b/net/tipc/name_distr.c index
> > > >  836e629e8f4a..5feaf3b67380 100644
> > > > --- a/net/tipc/name_distr.c
> > > > +++ b/net/tipc/name_distr.c
> > > > @@ -146,7 +146,7 @@ static void named_distribute(struct net *net,
> > > > struct sk_buff_head *list,
> > > >  	struct publication *publ;
> > > >  	struct sk_buff *skb = NULL;
> > > >  	struct distr_item *item = NULL;
> > > > -	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0) -
> INT_H_SIZE) /
> > > > +	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0, false) -
> > > > +INT_H_SIZE) /
> > > >  			ITEM_SIZE) * ITEM_SIZE;
> > > >  	u32 msg_rem = msg_dsz;
> > > >
> > > > diff --git a/net/tipc/node.c b/net/tipc/node.c index
> > > > c8f6177dd5a2..9a4ffd647701 100644
> > > > --- a/net/tipc/node.c
> > > > +++ b/net/tipc/node.c
> > > > @@ -45,6 +45,8 @@
> > > >  #include "netlink.h"
> > > >  #include "trace.h"
> > > >
> > > > +#include <net/netns/hash.h>
> > > > +
> > > >  #define INVALID_NODE_SIG	0x10000
> > > >  #define NODE_CLEANUP_AFTER	300000
> > > >
> > > > @@ -126,6 +128,7 @@ struct tipc_node {
> > > >  	struct timer_list timer;
> > > >  	struct rcu_head rcu;
> > > >  	unsigned long delete_at;
> > > > +	struct net *pnet;
> > > >  };
> > > >
> > > >  /* Node FSM states and events:
> > > > @@ -184,7 +187,7 @@ static struct tipc_link
> > > > *node_active_link(struct tipc_node *n, int sel)
> > > >  	return n->links[bearer_id].link;  }
> > > >
> > > > -int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
> > > > +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool
> > > > +connected)
> > > >  {
> > > >  	struct tipc_node *n;
> > > >  	int bearer_id;
> > > > @@ -194,6 +197,14 @@ int tipc_node_get_mtu(struct net *net, u32
> > > > addr,
> > > > u32
> > > > sel)
> > > >  	if (unlikely(!n))
> > > >  		return mtu;
> > > >
> > > > +	/* Allow MAX_MSG_SIZE when building connection oriented
> message
> > > > +	 * if they are in the same core network
> > > > +	 */
> > > > +	if (n->pnet && connected) {
> > > > +		tipc_node_put(n);
> > > > +		return mtu;
> > > > +	}
> > > > +
> > > >  	bearer_id = n->active_links[sel & 1];
> > > >  	if (likely(bearer_id != INVALID_BEARER_ID))
> > > >  		mtu = n->links[bearer_id].mtu;
> > > > @@ -361,11 +372,14 @@ static void tipc_node_write_unlock(struct
> > > > tipc_node *n) }
> > > >
> > > >  static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
> > > > -					  u8 *peer_id, u16 capabilities)
> > > > +					  u8 *peer_id, u16 capabilities,
> > > > +					  u32 signature, u32 pnet_hash)
> > > >  {
> > > >  	struct tipc_net *tn = net_generic(net, tipc_net_id);
> > > >  	struct tipc_node *n, *temp_node;
> > > > +	struct tipc_net *tn_peer;
> > > >  	struct tipc_link *l;
> > > > +	struct net *tmp;
> > > >  	int bearer_id;
> > > >  	int i;
> > > >
> > > > @@ -400,6 +414,23 @@ static struct tipc_node
> > > > *tipc_node_create(struct net *net, u32 addr,
> > > >  	memcpy(&n->peer_id, peer_id, 16);
> > > >  	n->net = net;
> > > >  	n->capabilities = capabilities;
> > > > +	n->pnet = NULL;
> > > > +	for_each_net_rcu(tmp) {
> > > > +		/* Integrity checking whether node exists in namespace or
> not */
> > > > +		if (net_hash_mix(tmp) != pnet_hash)
> > > > +			continue;
> > > > +		tn_peer = net_generic(tmp, tipc_net_id);
> > > > +		if (!tn_peer)
> > > > +			continue;
> > > > +
> > > > +		if ((tn_peer->random & 0x7fff) != (signature & 0x7fff))
> > > > +			continue;
> > > > +
> > > > +		if (!memcmp(n->peer_id, tn_peer->node_id,
> NODE_ID_LEN)) {
> > > > +			n->pnet = tmp;
> > > > +			break;
> > > > +		}
> > > > +	}
> > > >  	kref_init(&n->kref);
> > > >  	rwlock_init(&n->lock);
> > > >  	INIT_HLIST_NODE(&n->hash);
> > > > @@ -979,7 +1010,7 @@ u32 tipc_node_try_addr(struct net *net, u8
> > > > *id,
> > > > u32
> > > > addr)
> > > >
> > > >  void tipc_node_check_dest(struct net *net, u32 addr,
> > > >  			  u8 *peer_id, struct tipc_bearer *b,
> > > > -			  u16 capabilities, u32 signature,
> > > > +			  u16 capabilities, u32 signature, u32 pnet_hash,
> > > >  			  struct tipc_media_addr *maddr,
> > > >  			  bool *respond, bool *dupl_addr)  { @@ -998,7 +1029,8
> > @@ void
> > > > tipc_node_check_dest(struct net *net, u32
> > > addr,
> > > >  	*dupl_addr = false;
> > > >  	*respond = false;
> > > >
> > > > -	n = tipc_node_create(net, addr, peer_id, capabilities);
> > > > +	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
> > > > +			     pnet_hash);
> > > >  	if (!n)
> > > >  		return;
> > > >
> > > > @@ -1424,6 +1456,49 @@ static int __tipc_nl_add_node(struct
> > > > tipc_nl_msg *msg, struct tipc_node *node)
> > > >  	return -EMSGSIZE;
> > > >  }
> > > >
> > > > +static void tipc_lxc_xmit(struct net *pnet, struct sk_buff_head
> > > > +*list) {
> > > > +	struct tipc_msg *hdr = buf_msg(skb_peek(list));
> > > > +	struct sk_buff_head inputq;
> > > > +
> > > > +	switch (msg_user(hdr)) {
> > > > +	case TIPC_LOW_IMPORTANCE:
> > > > +	case TIPC_MEDIUM_IMPORTANCE:
> > > > +	case TIPC_HIGH_IMPORTANCE:
> > > > +	case TIPC_CRITICAL_IMPORTANCE:
> > > > +		if (msg_connected(hdr) || msg_named(hdr)) {
> > > > +			spin_lock_init(&list->lock);
> > > > +			tipc_sk_rcv(pnet, list);
> > > > +			return;
> > > > +		}
> > > > +		if (msg_mcast(hdr)) {
> > > > +			skb_queue_head_init(&inputq);
> > > > +			tipc_sk_mcast_rcv(pnet, list, &inputq);
> > > > +			__skb_queue_purge(list);
> > > > +			skb_queue_purge(&inputq);
> > > > +			return;
> > > > +		}
> > > > +		return;
> > > > +	case MSG_FRAGMENTER:
> > > > +		if (tipc_msg_assemble(list)) {
> > > > +			skb_queue_head_init(&inputq);
> > > > +			tipc_sk_mcast_rcv(pnet, list, &inputq);
> > > > +			__skb_queue_purge(list);
> > > > +			skb_queue_purge(&inputq);
> > > > +		}
> > > > +		return;
> > > > +	case LINK_PROTOCOL:
> > > > +	case NAME_DISTRIBUTOR:
> > > > +	case GROUP_PROTOCOL:
> > > > +	case CONN_MANAGER:
> > > > +	case TUNNEL_PROTOCOL:
> > > > +	case BCAST_PROTOCOL:
> > > > +		return;
> > > > +	default:
> > > > +		return;
> > > > +	};
> > > > +}
> > > > +
> > > >  /**
> > > >   * tipc_node_xmit() is the general link level function for message sending
> > > >   * @net: the applicable net namespace @@ -1439,6 +1514,7 @@ int
> > > > tipc_node_xmit(struct net *net, struct sk_buff_head *list,
> > > >  	struct tipc_link_entry *le = NULL;
> > > >  	struct tipc_node *n;
> > > >  	struct sk_buff_head xmitq;
> > > > +	bool node_up = false;
> > > >  	int bearer_id;
> > > >  	int rc;
> > > >
> > > > @@ -1455,6 +1531,16 @@ int tipc_node_xmit(struct net *net, struct
> > > > sk_buff_head *list,
> > > >  		return -EHOSTUNREACH;
> > > >  	}
> > > >
> > > > +	node_up = node_is_up(n);
> > > > +	if (node_up && n->pnet && check_net(n->pnet)) {
> > > > +		/* xmit inner linux container */
> > > > +		tipc_lxc_xmit(n->pnet, list);
> > > > +		if (likely(skb_queue_empty(list))) {
> > > > +			tipc_node_put(n);
> > > > +			return 0;
> > > > +		}
> > > > +	}
> > > > +
> > > >  	tipc_node_read_lock(n);
> > > >  	bearer_id = n->active_links[selector & 1];
> > > >  	if (unlikely(bearer_id == INVALID_BEARER_ID)) { diff --git
> > > >  	a/net/tipc/node.h b/net/tipc/node.h index
> > > 291d0ecd4101..11eb95ce358b
> > > >  	100644
> > > > --- a/net/tipc/node.h
> > > > +++ b/net/tipc/node.h
> > > > @@ -75,7 +75,7 @@ u32 tipc_node_get_addr(struct tipc_node *node);
> > > >  u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);  void
> > > > tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
> > > >  			  struct tipc_bearer *bearer,
> > > > -			  u16 capabilities, u32 signature,
> > > > +			  u16 capabilities, u32 signature, u32 pnet_hash,
> > > >  			  struct tipc_media_addr *maddr,
> > > >  			  bool *respond, bool *dupl_addr);  void
> > > > tipc_node_delete_links(struct net *net, int bearer_id); @@ -92,7
> > > > +92,7 @@ void tipc_node_unsubscribe(struct net *net, struct
> > > > list_head *subscr,
> > > >  u32 addr);  void tipc_node_broadcast(struct net *net, struct
> > > > sk_buff *skb);  int tipc_node_add_conn(struct net *net, u32 dnode,
> > > > u32 port,
> > > > u32  peer_port);  void tipc_node_remove_conn(struct net *net, u32
> > > > dnode, u32  port); -int tipc_node_get_mtu(struct net *net, u32
> > > > addr,
> > > > u32 sel);
> > > > +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool
> > > > +connected);
> > > >  bool tipc_node_is_up(struct net *net, u32 addr);
> > > >  u16 tipc_node_get_capabilities(struct net *net, u32 addr);  int
> > > > tipc_nl_node_dump(struct sk_buff *skb, struct netlink_callback
> > > > *cb); diff  --git a/net/tipc/socket.c b/net/tipc/socket.c index
> > > > 3b9f8cc328f5..fb24df03da6c 100644
> > > > --- a/net/tipc/socket.c
> > > > +++ b/net/tipc/socket.c
> > > > @@ -854,7 +854,7 @@ static int tipc_send_group_msg(struct net
> > > > *net, struct tipc_sock *tsk,
> > > >
> > > >  	/* Build message as chain of buffers */
> > > >  	__skb_queue_head_init(&pkts);
> > > > -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> > > > +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> > > >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> > > >  	if (unlikely(rc != dlen))
> > > >  		return rc;
> > > > @@ -1388,7 +1388,7 @@ static int __tipc_sendmsg(struct socket
> > > > *sock, struct msghdr *m, size_t dlen)
> > > >  		return rc;
> > > >
> > > >  	__skb_queue_head_init(&pkts);
> > > > -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> > > > +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> > > >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> > > >  	if (unlikely(rc != dlen))
> > > >  		return rc;
> > > > @@ -1526,7 +1526,7 @@ static void tipc_sk_finish_conn(struct
> > > > tipc_sock *tsk,
> > > > u32 peer_port,
> > > >  	sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
> > > >  	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
> > > >  	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
> > > > -	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk-
> >portid);
> > > > +	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid,
> > > > +true);
> > > >  	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
> > > >  	__skb_queue_purge(&sk->sk_write_queue);
> > > >  	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
> > > > --
> > > > 2.20.1
> > > >
> > > >

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
