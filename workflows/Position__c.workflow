<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Reassign_Position_to_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Unclaimed_Positions_Queue</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Reassign Position to Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Close_Date_to_Today</fullName>
        <field>Close_Date__c</field>
        <formula>TODAY()</formula>
        <name>Set Close Date to Today</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Status_to_Closed_Not_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Closed - Not Approved</literalValue>
        <name>Set Status to Closed - Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Status_to_Open_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Open - Approved</literalValue>
        <name>Set Status to Open Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Status_to_Pending_Approval</fullName>
        <field>Status__c</field>
        <literalValue>Pending Approval</literalValue>
        <name>Set Status to Pending Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <tasks>
        <fullName>Assign_Unclaimed_Position_Record_to_Recruiter</fullName>
        <assignedTo>Recruiting_Manager</assignedTo>
        <assignedToType>role</assignedToType>
        <dueDateOffset>4</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Assign Unclaimed Position Record to Recruiter</subject>
    </tasks>
</Workflow>
